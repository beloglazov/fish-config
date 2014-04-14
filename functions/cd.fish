function cd
    if [ -d $argv ]
        fasd -A $argv
    end
    builtin cd $argv
end
