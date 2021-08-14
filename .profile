# ~/.profile

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.local/share/cargo/env ]] && . ~/.local/share/cargo/env

## Defaults
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export CC="clang"
export CXX='clang++'
export LD='ld.lld'
export AR='llvm-ar'
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='fd -H --type f'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PATH="$HOME/.local/bin:$PATH"

## Dotfile Settings
export DOTFILEDIR="$XDG_DATA_HOME/dotfiles"
export DOTFILEBRANCH="laindesk"

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
export GOPATH="$XDG_DATA_HOME/go"
export GHCUP_USE_XDG_DIRS=1
export CABAL_CONFIG="$XDG_CONFIG_HOME/cabal/config"
export PLTUSERHOME="$XDG_DATA_HOME/racket"
export LEIN_HOME="$XDG_DATA_HOME/lein"
export R_ENVIRON_USER="$XDG_DATA_HOME/r/env"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
# PostgreSQL
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$HOME/.cache/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
# Misc
export LOCALPDIR="$HOME/.local/pass"
export DOT_SAGE="$XDG_DATA_HOME/sage"
export IPYTHONDIR="$XDG_CONFIG_HOME/jupyter"
export WORK_DIR="$HOME/.cache/work"
export ICEAUTHORITY="$HOME/.cache/ICEauthority"
export JUPYTERLAB_DIR="$XDG_DATA_HOME/jupyter/lab"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export _JAVA_AWT_WM_NONREPARENTING=1

if [ "$(tty)" = "/dev/tty1" ]; then
    pkill -9 Xorg
    exec startx
fi
