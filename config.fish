# Path to oh-my-fish
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Plugins
set fish_plugins vi-mode

# Vi-mode key bindings
function vi_mode_user -a mode

    # Common bindings
    bind \ck up-or-search
    bind \ch backward-char
    bind \cl forward-char

    # Mode-specific bindings
    switch $mode
        case normal
            bind h beginning-of-line
            bind l end-of-line
        case insert
            bind \cq vi_mode_normal
            # bind \cj down-or-search
    end
end

# Load oh-my-fish configuration
. $fish_path/oh-my-fish.fish

set PATH $PATH ~/.fzf
