# get python env stuff if it exists
# function _python_venv() {
#   if [[ $VIRTUAL_ENV != "" ]]; then
#     # split off the string before the '-' to get the ~friendly~ name
#     env_long=${VIRTUAL_ENV##*/}
#     env=("${(@s/-/)env_long}")
# 
#     echo "%{$fg[blue]%}($env[1])%{$reset_color%} "
#   fi
# }
# 
# function _git_info() {
#     if [[ $(git_prompt_info) != "" ]]; then
#         echo "($(git_prompt_info))"
#     fi
# }
# 
# function _ssh_env() {
#     if [[ $SSH_TTY ]]; then
#         echo " %{$fg[red]%}($(hostname))"
#     fi
# }

function fish_right_prompt
    set -l normal (set_color normal --bold)
    set -l brred (set_color brred --bold)
    set -l brgreen (set_color brgreen --bold)
    set -l cyan (set_color cyan --bold)

    set -l git_prompt_prefix "$cyan "
    set -l git_prompt_dirty " $brred✖"
    set -l git_prompt_clean " $brgreen✓"

    if git_is_repo
        echo -n -s (set_color normal --bold) "(" $git_prompt_prefix (git_branch_name)

        if git_is_touched
            echo -n -s $git_prompt_dirty
        else
            echo -n -s $git_prompt_clean
        end

        echo -n -s $normal ")"
    end
end
