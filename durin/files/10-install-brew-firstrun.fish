if (test "$(id -u)" -gt "0") and (test ! -f /etc/durin-homebrew.firstrun)
    if test ! -d /home/linuxbrew/.linuxbrew
        printf "Downloading Homebrew\n"
        curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh -o /tmp/install.sh
        printf "Installing Homebrew\n"
        /bin/bash /tmp/install.sh
        printf "Homebrew setup\t\t\t\t [ OK ]"
        sudo touch /etc/durin-homebrew.firstrun
    end
end
