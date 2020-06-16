export EDITOR='vim'

export MEMO_HOME=$HOME"/memo"
export DOT_HOME=$HOME"/dotfiles"
export PROJECTS_HOME=$HOME"/Projects"
export QMK_HOME=$HOME"/Documents/qmk_keyboards"
if [ -d $HOME"/share" ]; then 
    export SHARE_HOME=$HOME"/share"
    export VIRTUALBOX_HOME=$HOME"/share"
fi
if [ -d $HOME"/shared-drives/C:/Users/dewildke/Downloads" ]; then
    export SHARE_HOME=$HOME"/shared-drives/C:/Users/dewildke/Downloads"
fi

if hash google-chrome 2>/dev/null; then
    export BROWSER='google-chrome'
fi
if hash chromium 2>/dev/null; then
    export BROWSER='chromium'
fi
