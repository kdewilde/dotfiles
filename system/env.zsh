export EDITOR='vim'

export MEMO_HOME=$HOME"/memo"
export DOT_HOME=$HOME"/dotfiles"
export PROJECTS_HOME=$HOME"/Projects"
export QMK_HOME=$HOME"/Documents/qmk_keyboards"
export SHARE_HOME=$HOME"/share"

if hash google-chrome 2>/dev/null; then
    export BROWSER='google-chrome'
fi
if hash chromium 2>/dev/null; then
    export BROWSER='chromium'
fi
