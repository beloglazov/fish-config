function fzf-history
    history | fzf > /tmp/fzf; and eval (cat /tmp/fzf)
end
