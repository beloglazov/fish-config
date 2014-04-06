function fzf-vim-fasd
    fasd -fl | fzf --no-sort > /tmp/fzf; and v (cat /tmp/fzf)
end
