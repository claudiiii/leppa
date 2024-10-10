if test "$(id -u)" -gt "0"; and test ! -f /etc/durin-homebrew.firstrun
    if test ! -d /home/linuxbrew/.linuxbrew
        printf "Downloading Homebrew\n"
        curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh -o /tmp/install-brew.sh
        printf "Installing Homebrew\n"
        /bin/bash /tmp/install-brew.sh
        printf "Homebrew setup completed\n"
        sudo touch /etc/durin-homebrew.firstrun
    end

    # Install base brew bottles
    if test -d /home/linuxbrew/.linuxbrew
        brew bundle install --file /etc/Brewfile
    end

end
