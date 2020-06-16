# this will mount a virtualbox folder named share to the SHARE_HOME env variable

LOCATION=$VIRTUALBOX_HOME
if [ -d $LOCATION ] && [[ ! $( grep $LOCATION" " /proc/mounts ) ]] 
then
    echo "Mounting Virtualbox shared folder under $LOCATION"
    mkdir -p $LOCATION
    sudo mount -t vboxsf virtualboxShare $LOCATION
fi

