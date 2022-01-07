set fish_greeting

fish_vi_key_bindings

# exa
alias ll="exa -l --icons"
alias llt="exa -l -T --icons"

# nvim
alias n="nvim ."
alias nd="nvim --cmd 'set rtp+=$PWD' ."
alias .packer="cd ~/.local/share/nvim/site/pack/packer"

# Stream song-grab
alias gsvlc="VERBOSE=true OUTPUT_DIR=./.output ./Github/grab-song/grab-song.sh vlc"
alias gscele="VERBOSE=true OUTPUT_DIR=./.output ./Github/grab-song/grab-song.sh"

# dotfiles
alias .f="cd ~/.dotfiles"
alias .dot="cd ~/.dotfiles && nvim ."
alias .fish="cd ~/.dotfiles/fish/.config/fish && nvim config.fish"
alias .kitty="cd ~/.dotfiles/kitty/.config/kitty && nvim kitty.conf"
alias .nvim="cd ~/.dotfiles/nvim/.config/nvim && nvim lua/plugins.lua"
alias .zsh="cd ~/.dotfiles/zsh && nvim .zshrc"
alias .stow-up="stow --adopt -nv *"
alias .stow="stow -S -nv"

# Git/Work directories
alias .g="cd ~/GitHub"
alias .ful="cd ~/GitHub/ful1e5/"
alias .on="cd ~/GitHub/projekt0n/"

# Python
alias p="python"
set PATH ~/.local/bin $PATH

# Cargo
set PATH "$HOME/.cargo/bin" $PATH

# Flutter
# set -Ua fish_user_paths ~/GitHub/flutter/bin
set PATH ~/GitHub/flutter/bin $PATH

# Blur
function blur_terminal_background
  if test $DISPLAY
    for class in kitty konsole;
      for ID in (xdotool search --class $class)
        xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $ID
      end
    end
  end
end

blur_terminal_background

