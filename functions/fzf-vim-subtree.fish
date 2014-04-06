function fzf-vim-subtree
    find * -path '*/\.*' -prune -o -type f -print ^/dev/null | \
        fzf --no-sort > /tmp/fzf; and v (cat /tmp/fzf)
end
