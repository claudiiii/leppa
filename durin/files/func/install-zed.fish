function install-zed --description "Install the Zed editor. Pass the channel as argument: stable,nightly,preview,dev" --argument-names channel
    printf "Downloading Zed install script\n"
    curl -fsSL https://raw.githubusercontent.com/zed-industries/zed/refs/heads/main/script/install.sh -o /tmp/install-zed.sh
    if test -z $channel
        printf "Installing Zed stable\n"
        /bin/bash /tmp/install-zed.sh
    else
        printf "installing Zes %s\n" $channel
        ZED_CHANNEL="$channel" /bin/bash /tmpinstall-zed.sh
    end
    printf "Zed was installed!\n"
end
