export LC_ALL="en_US.UTF-8"
export EDITOR=nvim

# Path to your oh-my-zsh installation.
export ZSH="/home/kaiz/.oh-my-zsh"

# Aliases --------------------------------------------------------------
# nvim
alias nvimdev=nvim --cmd "set rtp+=$(pwd)" .
# Stream song-grab
alias gsvlc="VERBOSE=true OUTPUT_DIR=./.output ./Github/grab-song/grab-song.sh vlc"
alias gscele="VERBOSE=true OUTPUT_DIR=./.output ./Github/grab-song/grab-song.sh"

# Logout session KDE
alias hibr="systemctl hibernate"
alias lloo="qdbus org.kde.ksmserver /KSMServer logout 1 3 3"

# Python
alias p="python"

# flutter
export PATH=$PATH:$HOME/GitHub/flutter/bin
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable

# NVM ------------------------------------------------------------------
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# themes ---------------------------------------------------------------
ZSH_THEME="robbyrussell"

# plugins ---------------------------------------------------------------
plugins=(
	vi-mode
	ubuntu
	git
	archlinux
	yarn
	zsh-autosuggestions
	sudo
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Kitty ------------------------------------------------------------------------
autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Kitty tab name
function set-title-precmd() {
  printf "\e]2;%s\a" "${PWD/#$HOME/~}"
}

function set-title-preexec() {
  printf "\e]2;%s\a" "$1"
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd set-title-precmd
add-zsh-hook preexec set-title-preexec

# Blur
if [[ $(ps --no-header -p $PPID -o comm) =~ '^yakuake|kitty$' ]]; then
        for wid in $(xdotool search --pid $PPID); do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi

# lua ---------------------------------------------------------------------------
alias luamake=/home/kaiz/.config/nvim/lua-language-server/3rd/luamake/luamake
