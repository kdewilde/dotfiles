alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias open="xdg-open"
alias ll="ls -lhA"

alias r="ranger"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias i3conf="vim ~/.config/i3/config"
alias rcconf="vim ~/.config/ranger/rc.conf"

alias scdlmix="scdl -l https://soundcloud.com/ikno/sets/checkout-mixes --download-archive ~/memo/soundcloud/archive.txt -c --path ~/share/music"

# alias postman="~/myapps/Postman/app/Postman &|"
# alias robo3t="~/myapps/robo3t/bin/robo3t &|"

# CERES
alias cdcf="cd $PROJECTS_HOME/ceres/ceres-web/ceres-web-fe/integration/WAR/src/main/webapp/js/ext6"
alias runc="killjboss & cd $PROJECTS_HOME/ceres/ && ./buildAndRunCeresDewildke.sh"
alias watchc="cd $PROJECTS_HOME/ceres && lsyncd lsyncd.lua"
alias logc="vim $PROJECTS_HOME/ceres/ceres-application-starter/ceres/target/ceres-war.log"

# VP
alias runvp="cd $PROJECTS_HOME/vectoring-platform/vectoring-platform/integration/war && ./startupCargo.sh"
alias cdvp="cd $PROJECTS_HOME/vectoring-platform"
alias watchvp="cd $PROJECTS_HOME/vectoring-platform && lsyncd lsyncd.lua"

# VESTA
alias cdve="cd $PROJECTS_HOME/vesta"

# BITS
alias cdb="cd $PROJECTS_HOME/bits"

# TODO CHECK THESE FOR ZSH GIT MAPPING CONFLICTS
alias gP="cd $PROJECTS_HOME"
alias gpp="cd $PROJECTS_HOME"
alias gpve="cd $PROJECTS_HOME/vesta"
alias gpvp="cd $PROJECTS_HOME/vecotring-platform"
alias gpc="cd $PROJECTS_HOME/ceres"
alias gpb="cd $PROJECTS_HOME/bits"
alias g.="cd $DOT_HOME"
alias gm="cd $MEMO_HOME"
alias gs="cd $SHARE_HOME"
alias gk="cd $QMK_HOME"
alias gq="cd $QMK_HOME"
alias gd="cd ~/Downloads"
alias gh="cd ~"
