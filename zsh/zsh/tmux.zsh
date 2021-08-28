if [[ -o login ]]; then
        if [[ -v DESKTOP_SESSION ]]; then
                echo "not attaching because DESKTOP_SESSION set to $DESKTOP_SESSION"
        elif [[ ! -v WSL_DISTRO_NAME ]]; then
                tmux attach || tmux 
        fi
fi
