function f
    find . -iname "*$argv*" ^/dev/null | g $argv
end

