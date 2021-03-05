# Minimal fish theme
# Requires Nerd Fonts for the icons

set background_jobs "%(1j.%F{green} %f.)"
set non_zero_return_value "%(0?..%F{yellow} %f)"

function fish_prompt
    set -l brred (set_color brred)
    set -l brmagenta (set_color brmagenta)
    set -l brcyan (set_color brcyan)

    set -l decoration "$brred❥$brmagenta❥$brcyan❥ "

    set cwd (set_color normal) (prompt_pwd)

    echo -n $cwd $decoration
end
