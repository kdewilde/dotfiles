alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias open="xdg-open"
alias ll="ls -lhA"

alias r="ranger"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias i3conf="vim ~/.i3/config"
alias rcconf="vim ~/.config/ranger/rc.conf"

alias scdlmix="scdl -l https://soundcloud.com/ikno/sets/checkout-mixes --download-archive ~/memo/soundcloud/archive.txt -c --path ~/share/music"

# alias postman="~/myapps/Postman/app/Postman &|"
# alias robo3t="~/myapps/robo3t/bin/robo3t &|"

alias gpv="cd ~/myprojects/vesta"
alias gpc="cd ~/myprojects/ceres"
alias gpb="cd ~/myprojects/bits-web"
alias cdc="cd ~/myprojects/ceres"

# CERES
alias cdcf="cd ~/myprojects/ceres/ceres-web/ceres-web-fe/integration/WAR/src/main/webapp/js/ext6"
alias runc="cd ~/myprojects/ceres/ceres-application-starter/mvnscripts && ./buildAndRunCeres.sh"
alias watchc="cd ~/myprojects/ceres && lsyncd lsyncd.lua"

# VP
alias runvp="cd ~/myprojects/vectoring-platform/vectoring-platform/integration/war && mvn cargo:run -o -Pdevelopment"
alias cdvp="cd ~/myprojects/vectoring-platform"
alias watchvp="cd ~/myprojects/vectoring-platform && lsyncd lsyncd.lua"

# VESTA
alias runv="cd ~/myprojects/vesta/rf-integration/integration-war && mvn cargo:run -o"
alias cdv="cd ~/myprojects/vesta"
alias watchv="cd ~/myprojects/vesta && lsyncd lsyncd.lua"

# BITS
alias buildb="cd ~/myprojects/bits-web && mvn clean package"
alias runb="cd ~/myprojects/bits-web && mvn cargo:run"
alias cdb="cd ~/myprojects/bits-web"
alias watchb="cd ~/myprojects/bits-web && lsyncd lsyncd.lua"

alias gP="cd $PROJECTS_HOME"
alias gpp="cd $PROJECTS_HOME"
alias gpv="cd $PROJECTS_HOME/vesta"
alias gpc="cd $PROJECTS_HOME/ceres"
alias gpb="cd $PROJECTS_HOME/bits-web"
alias g.="cd $DOT_HOME"
alias gm="cd $MEMO_HOME"
alias gs="cd $SHARE_HOME"
alias gk="cd $QMK_HOME"
alias gq="cd $QMK_HOME"
alias gd="cd ~/Downloads"
alias gh="cd ~"
