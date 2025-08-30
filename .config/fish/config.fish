if status is-interactive
    set fish_greeting
    set hydro_symbol_prompt ❱
    set hydro_color_pwd $fish_color_cwd
    set hydro_color_prompt $fish_color_cwd
    set hydro_color_git $fish_color_autosuggestion
    set hydro_color_duration $fish_color_autosuggestion
    set hydro_cmd_duration_threshold 5000

    # visit the last saved directory, if any
    if test -f ~/.cache/fish/last_dir
        set -l last_dir (cat ~/.cache/fish/last_dir)

        if test -d "$last_dir"
            cd "$last_dir"
        end
    end
end

fish_add_path ~/.local/bin
fish_add_path ~/go/bin
fish_add_path ~/.cargo/bin

source ~/.profile
# mise activate fish | source
