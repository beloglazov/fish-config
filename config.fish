# Path to oh-my-fish
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Plugins
set fish_plugins vi-mode

# Vi-mode key bindings
function vi_mode_user -a mode

    # Base bindings
    bind \ck up-or-search
    bind \ch backward-char
    bind \cl forward-char

    # fzf bindings
    bind \cr 'fzf-history; commandline -f repaint'
    bind \ce 'fzf-vim-fasd; commandline -f repaint'
    bind \cp 'fzf-vim-subtree; commandline -f repaint'
    bind \cs 'fzf-cd-subtree; commandline -f repaint'
    bind \cx 'fzf-cd-fasd; commandline -f repaint'

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

# Disable the welcome text
set fish_greeting ""

# Load oh-my-fish configuration
. $fish_path/oh-my-fish.fish

set PATH $PATH ~/.fzf
