function fzf-cd-fasd
    fasd -dl | fzf --no-sort > /tmp/fzf; and cd (cat /tmp/fzf)
end
