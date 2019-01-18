# Symlink vscode user settings

CURRENT_DIR="$(dirname "$0")"
SETTINGS_DIR="$HOME/.config/Code/User"

ln -s "$CURRENT_DIR"/settings.json "$SETTINGS_DIR"/settings.json
ln -s "$CURRENT_DIR"/keybindings.json "$SETTINGS_DIR"/keybindings.json
