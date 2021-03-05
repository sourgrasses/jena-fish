function fish_mode_prompt
    if [ $fish_key_bindings = fish_vi_key_bindings ]
        switch $fish_bind_mode
            case default
                echo -n -s (set_color green) ❤
            case insert
                echo -n -s  (set_color cyan) ❤
            case visual
                echo -n -s  (set_color magenta) ❤
            case replace-one
                echo -n -s  (set_color brmagenta) ❤
        end
    end
end
