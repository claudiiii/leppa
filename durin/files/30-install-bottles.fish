if (test "$(id -u)" -gt "0") and (test -d /home/linuxbrew/.linuxbrew)
    brew bundle install --file /etc/Brewfile
end
