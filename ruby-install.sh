if [ ! -f /usr/bin/curl ]; then
    echo "Curl Durung keinstall"
    sleep 1
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    sudo apt update; sudo apt install curl
    \curl -sSL https://get.rvm.io -o rvm.sh
    cat rvm.sh | bash -s stable
    source ~/.rvm/scripts/rvm
    rvm install ruby --default
else
   echo "Curl sampun keinstall" 
    \curl -sSL https://get.rvm.io -o rvm.sh
    cat rvm.sh | bash -s stable
    source ~/.rvm/scripts/rvm
    rvm install ruby --default
fi
