function fzf-cd-home
    find ~/* -path '*/\.*' -prune -o -type d -print ^/dev/null | \
        fzf --no-sort > /tmp/fzf; and cd (cat /tmp/fzf)
end
