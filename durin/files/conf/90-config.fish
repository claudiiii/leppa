if status --is-interactive
    set -gx BAT_THEME ansi

    # Abbreviations
    abbr --add -- g git
    abbr --add -- h hx
    abbr --add -- lg lazygit
    abbr --add -- n nvim

    # Aliases
    alias rm 'rm -I'

    if type -q eza
        alias l 'eza --long --almost-all --sort=newest --hyperlink'
        alias la 'eza -a'
        alias ll 'eza --long --sort=newest --hyperlink'
        alias lla 'eza -la'
        alias ls eza
        alias lt 'eza --tree'
    else
        alias ls 'ls -F --color=auto'
        alias l 'ls -lA --sort=time --reverse'
        alias la 'ls -A'
        alias ll 'ls -l --sort=time --reverse'
        alias lla 'ls -la'
        alias lt tree
    end

    # Bling ✨
    if type -q starship
        starship init fish | source
    end

    if type -q direnv
        direnv hook fish | source
    end

    if type -q atuin
        atuin init fish | source
    end
end
