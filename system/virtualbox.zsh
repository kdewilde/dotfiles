# this will mount a virtualbox folder named share to the SHARE_HOME env variable

if [ -d $SHARE_HOME ] && [[ ! $( grep $SHARE_HOME" " /proc/mounts ) ]] 
then
    echo "Mounting Virtualbox shared folder under $SHARE_HOME"
    mkdir -p $SHARE_HOME
    sudo mount -t vboxsf virtualboxShare $SHARE_HOME
fi

