# ~/.profile

if [[ -n $BASH ]]; then
    set -a
    for f in ~/.config/environment.d/*.conf; do
        source $f
    done
    set +a

    [[ -f ~/.bashrc ]] && . ~/.bashrc
fi

