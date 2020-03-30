export PATH="$PATH:/usr/local/bin"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/mwest/.oh-my-zsh

DEFAULT_USER=`whoami`

export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# use git clone https://github.com/powerline/fonts.git --depth=1
# to install powerline fonts for the agnoster prompt
ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.zshenv
source ~/.zprofile

eval "$(rbenv init -)"
