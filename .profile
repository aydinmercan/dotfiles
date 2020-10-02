# ~/.profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

## Defaults
export LANG='en_US.UTF-8'
export CC='clang'
export CXX='clang++'
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export QT_QPA_PLATFORMTHEME="qt5ct"
export MANPAGER="nvim -c 'set ft=man' -"
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/share/matlab/r2020a/bin:$HOME/.local/share/vivado/Vivado/2018.3/bin"

## Cleanup
# XMonad
export XMONAD_CONFIG_HOME="$HOME/.config/xmonad"
export XMONAD_DATA_HOME="$HOME/.local/share/xmonad"
export XMONAD_CACHE_HOME="$HOME/.cache/xmonad"
# History
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE="$HOME/.history"
export LESSHISTFILE="-"
# GTK
export GTK_RC_FILES="$HOME/.config/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc"
# Crypto
export GNUPGHOME="$HOME/.local/share/gnupg"
export MINISIGN_CONFIG_DIR="$HOME/.local/share/minisign"
# Notmuch
export NOTMUCH_CONFIG="$HOME/.config/notmuch/notmuchrc"
export NBMGIT="$HOME/.local/share/notmuch/nmbug"
# Languages
export CARGO_HOME="$HOME/.local/share/cargo"
export CHICKEN_REPOSITORY="$HOME/.local/share/chicken"
export GOHOME="$HOME/.local/share/go"
export CABAL_CONFIG="$HOME/.config/cabal/config"
export CUDA_CACHE_PATH="$HOME/.cache/nv"
export PLTUSERHOME="$HOME/.local/share/racket"
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot="$HOME"/.local/share/java/ -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
export JAVA_HOME="/usr/lib/jvm/default/"
export R_ENVIRON_USER="$HOME/.local/share/r/env"
export GRADLE_USER_HOME="$HOME/.local/share/gradle"
# PostgreSQL
export PSQLRC="$HOME/.config/pg/psqlrc"
export PSQL_HISTORY="$HOME/.cache/pg/psql_history"
export PGPASSFILE="$HOME/.config/pg/pgpass"
export PGSERVICEFILE="$HOME/.config/pg/pg_service.conf"
# Misc
export DOTFILEDIR="$HOME/.local/share/dotfiles"
export LOCALPDIR="$HOME/.local/pass"
export DOT_SAGE="$HOME/.local/share/sage"
export IPYTHONDIR="$HOME/.config/jupyter"
export JUPYTER_CONFIG_DIR="$HOME/.config/jupyter"
export MATLAB_LOG_DIR="$HOME/.cache/matlab"
export WORK_DIR="$HOME/.cache/work"
export ICEAUTHORITY="$HOME/.cache/ICEauthority"

## Auto-start dwm in tty1, xfce in tty2
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
