function cd --description 'Save last visited directory'
    if test (count $argv) -eq 0
        set argv $HOME
    end

    builtin cd $argv
    mkdir -p ~/.cache/fish
    echo (pwd) >~/.cache/fish/last_dir
end
