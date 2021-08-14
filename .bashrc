# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
[ -r /usr/share/fzf/completion.bash ] && . /usr/share/fzf/completion.bash
[ -r /usr/share/fzf/key-bindings.bash ] && . /usr/share/fzf/key-bindings.bash

set -o vi
stty -ixon

shopt -s autocd
shopt -s globstar
shopt -s checkwinsize

alias cat='bat -pp'
alias cd..='cd ..'
alias cmaked='cmake -DCMAKE_BUILD_TYPE=Debug .'
alias cmaker='cmake -DCMAKE_BUILD_TYPE=Release .'
alias cmk='cmake --build .'
alias diff='diff --color'
alias find='find -regextype sed'
alias gdb='gdb -q'
alias grep='grep -E --color=auto'
alias ll='lsd -l --group-dirs=first'
alias lla='lsd -lah --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias mesonc='meson compile -C build'
alias mesont='meson test -C build'
alias tree='lsd --tree --depth=2 --group-dirs=first'
alias treefull='lsd --tree --group-dirs=first'

# Add everything to the history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Some functions are taken from isaac
function truecolortest () {
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

function sedme() {
    echo '==>sed quick guide<==
:  # label
=  # line_number
a  # append_text_to_stdout_after_flush
b  # branch_unconditional
c  # range_change
d  # pattern_delete_top/cycle
D  # pattern_ltrunc(line+nl)_top/cycle
g  # pattern=hold
G  # pattern+=nl+hold
h  # hold=pattern
H  # hold+=nl+pattern
i  # insert_text_to_stdout_now
l  # pattern_list
n  # pattern_flush=nextline_continue
N  # pattern+=nl+nextline
p  # pattern_print
P  # pattern_first_line_print
q  # flush_quit
r  # append_file_to_stdout_after_flush
s  # substitute
t  # branch_on_substitute
w  # append_pattern_to_file_now
x  # swap_pattern_and_hold
y  # transform_chars '
}

function qinfo() {
    curl https://cht.sh/$1
}

function weather() {
    curl wttr.in/$1
}

# also took __git_ps1 from isaac
__git_ps1='git rev-parse --abbrev-ref HEAD 2>/dev/null||printf ""'

export PS1="\[\033[38;5;98m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;206m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;228m\]\A\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;156m\]\W\[$(tput sgr0)\] \$(${__git_ps1})\[\033[38;5;15m\]]\n\[$(tput sgr0)\]\[\033[38;5;195m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

