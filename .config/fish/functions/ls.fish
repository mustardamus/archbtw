function ls --wraps='eza' --description 'alias ls=eza'
    eza -la --git --icons=always --group-directories-first $argv
end
