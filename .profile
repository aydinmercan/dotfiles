# ~/.profile

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.config/user-dirs.dirs ]] && . ~/.config/user-dirs.dirs
[[ -f ~/.local/share/cargo/env ]] && . ~/.local/share/cargo/env
[[ -f ~/.local/share/ghcup/env ]] && . ~/.local/share/ghcup/env

## Defaults
export LANG='en_US.UTF-8'
export CC='clang'
export CXX='clang++'
export LD='ld.lld'
export AR='llvm-ar'
export AS='llvm-as'
export GUILE='guile3'
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='fd -H --type f'
export QT_QPA_PLATFORMTHEME="qt5ct"
export DOTFILEBRANCH="laptop"
export MANPAGER="nvim -c 'set ft=man' -"
export PATH="$HOME/.local/bin:$XDG_CONFIG_HOME/emacs/bin:$PATH"
export XKB_DEFAULT_MODEL=jp106
export XKB_DEFAULT_LAYOUT=jp,br
export XKB_DEFAULT_OPTIONS=grp:rctrl_toggle
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

## Fixes
export _JAVA_AWT_WM_NONREPARENTING=1

## Cleanup
# History
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE="$HOME/.history"
export LESSHISTFILE="-"
# GTK
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk/gtkrc1.0"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk/gtkrc2.0"
# Crypto
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export MINISIGN_CONFIG_DIR="$XDG_DATA_HOME/minisign"
# Notmuch
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/notmuchrc"
export NBMGIT="$XDG_DATA_HOME/notmuch/nmbug"
# Languages
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CHICKEN_REPOSITORY="$XDG_DATA_HOME/chicken"
export GOPATH="$XDG_DATA_HOME/go"
export GHCUP_USE_XDG_DIRS=1
export CABAL_CONFIG="$XDG_CONFIG_HOME/cabal/config"
export PLTUSERHOME="$XDG_DATA_HOME/racket"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java/ -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
export JAVA_HOME="/usr/lib/jvm/default/"
export LEIN_HOME="$XDG_DATA_HOME/lein"
export R_ENVIRON_USER="$XDG_DATA_HOME/r/env"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
# PostgreSQL
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$HOME/.cache/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
# Misc
export DOTFILEDIR="$XDG_DATA_HOME/dotfiles"
export LOCALPDIR="$HOME/.local/pass"
export DOT_SAGE="$XDG_DATA_HOME/sage"
export IPYTHONDIR="$XDG_CONFIG_HOME/jupyter"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export MATLAB_LOG_DIR="$HOME/.cache/matlab"
export WORK_DIR="$HOME/.cache/work"
export ICEAUTHORITY="$HOME/.cache/ICEauthority"
export DOOM_HOME="$XDG_CONFIG_HOME/doom/"

[[ "$(tty)" = "/dev/tty1" ]] && {
    export XDG_SESSION_TYPE=wayland
    export QT_QPA_PLATFORM=wayland
    export MOZ_ENABLE_FIREFOX=1
    exec sway
}
[[ "$(tty)" = "/dev/tty2" ]] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
