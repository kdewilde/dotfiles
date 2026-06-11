# This file loads last (zzz prefix) to override oh-my-zsh defaults

# Use eza if available
# eza is a modern alternative for the venerable 
# file-listing command-line program ls 
# that ships with Unix and Linux operating systems, 
# giving it more features and better defaults. 
# It uses colours to distinguish file types and metadata. 
# It knows about symlinks, extended attributes, and Git. 
# And it’s small, fast, and just one single binary.
if command -v eza &> /dev/null; then
  alias ls="eza --icons --group-directories-first --all"
fi
