# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -r "$CARGO_HOME/env" ] && . "$CARGO_HOME/env"
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
[ -r /usr/share/clang/bash-autocomplete.sh ] && . /usr/share/clang/bash-autocomplete.sh
[ -r ~/.bash_preexec ] && . ~/.bash_preexec

set -o vi
stty -ixon

shopt -s autocd
shopt -s globstar
shopt -s checkwinsize

alias mbsync='mbsync -c ~/.config/isync/mbsyncrc'
alias cat='bat -pp'
alias cmaked='cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug ..'
alias cmaker='cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..'
alias cmk='cmake --build .'
alias diff='diff --color'
alias find='find -regextype sed'
alias icat='wezterm imgcat'
alias ll='exa -l --group-directories-first'
alias lla='exa -lah --group-directories-first'
alias ls='exa --group-directories-first'
alias rust-gdb='rust-gdb -q'
alias tree='exa --tree --level=2 --group-directories-first'
alias treefull='lsd --tree --group-directories-first'
alias xxd='busybox xxd'

# Add everything to the history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Some functions are taken from isaac
truecolortest () {
    awk 'BEGIN{
    s="/\\/\\/\\/\\/\\"; s=s s s s s s s s;
    for (colnum = 0; colnum<77; colnum++) {
        r = 255-(colnum*255/76);
        g = (colnum*510/76);
        b = (colnum*255/76);
        if (g>255) g = 510-g;
            printf "\033[48;2;%d;%d;%dm", r,g,b;
            printf "\033[38;2;%d;%d;%dm", 255-r,255-g,255-b;
            printf "%s\033[0m", substr(s,colnum+1,1);
        }
        printf "\n";
    }'
}

qinfo() {
    curl https://cht.sh/$1
}

weather() {
    curl wttr.in/$1
}

litebackup() {
    if [[ $# != 2 ]]; then
        echo "usage: litebackup source.db backup.db"
        return
    fi

    sqlite3 $1 ".backup $2"
}

__fuzzy_cd__() {
  local fd_exclude dir
  fd_exclude='-E .git -E .cache'
  dir=$(fd --type d --hidden --follow $fd_exclude | FZF_DEFAULT_OPTS="--height 40% --reverse --bind=ctrl-z:ignore" fzf +m) && printf 'cd -- %q' "$dir"
}

bind -m emacs-standard '"\er": redraw-current-line'

bind -m vi-command '"\C-z": emacs-editing-mode'
bind -m vi-insert '"\C-z": emacs-editing-mode'
bind -m emacs-standard '"\C-z": vi-editing-mode'

bind -m emacs-standard '"\ec": " \C-b\C-k \C-u`__fuzzy_cd__`\e\C-e\er\C-m\C-y\C-h\e \C-y\ey\C-x\C-x\C-d"'
bind -m vi-command '"\ec": "\C-z\ec\C-z"'
bind -m vi-insert '"\ec": "\C-z\ec\C-z"'


# also took __git_ps1 from isaac
#__git_ps1='git rev-parse --abbrev-ref HEAD 2>/dev/null||printf ""'

#export PS1="\[\033[38;5;98m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;206m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;228m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;156m\]\W\[$(tput sgr0)\] \$(${__git_ps1})\[\033[38;5;15m\]]\n\[$(tput sgr0)\]\[\033[38;5;195m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

eval "$(direnv hook bash)"
eval "$(starship init bash)"
eval "$(atuin init bash)"

bind -x '"\C-r": __atuin_history'
