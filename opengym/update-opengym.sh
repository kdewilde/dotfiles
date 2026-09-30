#!/usr/bin/env bash

set -Eeuo pipefail

APP_DIR="$HOME/opengym"
BACKUP_DIR="$HOME/opengym-backups"
REF="${1:-main}"

log() {
    echo
    echo "==> $*"
}

fail() {
    echo
    echo "ERROR: $*" >&2
    echo "The running containers have NOT been intentionally stopped by this script." >&2
    exit 1
}

cd "$APP_DIR" || fail "Cannot find $APP_DIR"

# ---------------------------------------------------------------------------
# 1. Safety checks
# ---------------------------------------------------------------------------

log "Checking Git working tree"

if [[ -n "$(git status --porcelain)" ]]; then
    echo
    git status --short
    fail "Git working tree is not clean. Commit/stash your changes before updating."
fi

# Protect the important local files from accidental changes.
if [[ ! -f .env ]]; then
    fail ".env does not exist."
fi

if [[ ! -d data ]]; then
    fail "data/ does not exist. Refusing to continue."
fi

# ---------------------------------------------------------------------------
# 2. Backup data
# ---------------------------------------------------------------------------

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="$BACKUP_DIR/opengym-data-$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

log "Backing up openGym data"

sudo tar -czf "$BACKUP_FILE" data/

echo "Backup created:"
echo "  $BACKUP_FILE"

# ---------------------------------------------------------------------------
# 3. Remember current version/commit
# ---------------------------------------------------------------------------

OLD_COMMIT="$(git rev-parse HEAD)"
OLD_REF="$(git branch --show-current || true)"

echo
echo "Current commit:"
echo "  $OLD_COMMIT"

# ---------------------------------------------------------------------------
# 4. Fetch repository
# ---------------------------------------------------------------------------

log "Fetching latest repository information"

git fetch --tags origin

# ---------------------------------------------------------------------------
# 5. Switch to requested ref
# ---------------------------------------------------------------------------

if [[ "$REF" == "main" ]]; then
    log "Updating to origin/main"

    git checkout main
    git pull --ff-only origin main

else
    # Only allow an existing tag. This prevents accidentally checking out
    # arbitrary commits/branches when using this script.
    if ! git rev-parse --verify --quiet "refs/tags/$REF" >/dev/null; then
        fail "Tag '$REF' does not exist. Run: git tag -l"
    fi

    log "Updating to release tag $REF"

    git checkout --detach "$REF"
fi

NEW_COMMIT="$(git rev-parse HEAD)"

echo
echo "New commit:"
echo "  $NEW_COMMIT"

if [[ "$OLD_COMMIT" == "$NEW_COMMIT" ]]; then
    echo "No source changes since the previous version."
fi

# ---------------------------------------------------------------------------
# 6. Pull prebuilt Docker images
# ---------------------------------------------------------------------------

log "Pulling Docker images"

docker compose pull

# ---------------------------------------------------------------------------
# 7. Recreate containers
# ---------------------------------------------------------------------------

log "Starting openGym with the new images"

docker compose up -d

# ---------------------------------------------------------------------------
# 8. Give containers a moment to start
# ---------------------------------------------------------------------------

log "Waiting for containers to start"

sleep 5

# ---------------------------------------------------------------------------
# 9. Verify container state
# ---------------------------------------------------------------------------

log "Checking container status"

docker compose ps

# Fail if compose reports a container that isn't running.
if docker compose ps --status running --quiet | grep -q .; then
    :
else
    echo
    echo "Container status:"
    docker compose ps
    echo
    echo "Recent logs:"
    docker compose logs --tail=100
    fail "No running openGym containers were detected."
fi

# ---------------------------------------------------------------------------
# 10. Verify the API from inside the host
# ---------------------------------------------------------------------------

log "Checking openGym API"

if curl --fail --silent --show-error \
    --max-time 10 \
    http://localhost:8080/api/health >/dev/null; then

    echo "API health check: OK"

else
    echo
    echo "API health check failed."
    echo
    echo "Recent logs:"
    docker compose logs --tail=100
    fail "openGym API did not respond successfully."
fi

# ---------------------------------------------------------------------------
# 11. Done
# ---------------------------------------------------------------------------

echo
echo "=========================================="
echo " openGym update completed successfully"
echo "=========================================="
echo
echo "Ref:       $REF"
echo "Commit:    $NEW_COMMIT"
echo "Backup:    $BACKUP_FILE"
echo
echo "Your HTTPS endpoint should be:"
echo "  https://gym.dewil.de"
echo
