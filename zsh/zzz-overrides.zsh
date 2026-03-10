# This file loads last (zzz prefix) to override oh-my-zsh defaults

# Use eza if available
if command -v eza &> /dev/null; then
  alias ls="eza --icons --group-directories-first --all"
fi
