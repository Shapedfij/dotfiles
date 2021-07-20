set fish_greeting

# exa
alias ll="exa -l --icons"
alias llt="exa -l -T --icons"

# nvim
alias n="nvim ."
alias nd="nvim --cmd 'set rtp+=$PWD' ."

# Stream song-grab
alias gsvlc="VERBOSE=true OUTPUT_DIR=./.output ./Github/grab-song/grab-song.sh vlc"
alias gscele="VERBOSE=true OUTPUT_DIR=./.output ./Github/grab-song/grab-song.sh"

# dotfiles
alias .f="cd ~/.dotfiles"
alias .up="stow --adopt -nv *"

# Directory
alias .g="cd ~/GitHub"
alias .ful="cd ~/GitHub/ful1e5/"
alias .on="cd ~/GitHub/projekt0n/"

# Python
alias p="python"

starship init fish | source
