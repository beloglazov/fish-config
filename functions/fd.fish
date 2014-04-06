function fd
    find . -type d -iname "*$argv*" ^/dev/null | g $argv
end

