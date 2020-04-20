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

alias gpv="cd $PROJECTS_HOME/vesta"
alias gpc="cd $PROJECTS_HOME/ceres"
alias gpb="cd $PROJECTS_HOME/bits"
alias cdc="cd $PROJECTS_HOME/ceres"

# CERES
alias cdcf="cd $PROJECTS_HOME/ceres/ceres-web/ceres-web-fe/integration/WAR/src/main/webapp/js/ext6"
alias runc="killjboss & cd $PROJECTS_HOME/ceres/ceres-application-starter/mvnscripts && ./buildAndRunCeres.sh"
alias watchc="cd $PROJECTS_HOME/ceres && lsyncd lsyncd.lua"
alias logc="vim $PROJECTS_HOME/ceres/ceres-application-starter/ceres/target/ceres-war.log"

# VP
alias runvp="cd $PROJECTS_HOME/vectoring-platform/vectoring-platform/integration/war && mvn cargo:run -o -Pdevelopment"
alias cdvp="cd $PROJECTS_HOME/vectoring-platform"
alias watchvp="cd $PROJECTS_HOME/vectoring-platform && lsyncd lsyncd.lua"

# VESTA
alias runv="cd $PROJECTS_HOME/vesta/rf-integration/integration-war && mvn cargo:run -o"
alias cdv="cd $PROJECTS_HOME/vesta"
alias watchv="cd $PROJECTS_HOME/vesta && lsyncd lsyncd.lua"

# BITS
alias buildb="cd $PROJECTS_HOME/bits && mvn clean package"
alias runb="cd $PROJECTS_HOME/bits && mvn cargo:run"
alias cdb="cd $PROJECTS_HOME/bits"
alias watchb="cd $PROJECTS_HOME/bits && lsyncd lsyncd.lua"

