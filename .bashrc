#
#                                                  /$$   /$$
#                                                  | $$  / $$
#  /$$$$$$   /$$$$$$  /$$$$$$  /$$    /$$ /$$   /$$|  $$/ $$/
# /$$__  $$ /$$__  $$|____  $$|  $$  /$$/| $$  | $$ \  $$$$/
#| $$  \ $$| $$  \__/ /$$$$$$$ \  $$/$$/ | $$  | $$  >$$  $$
#| $$  | $$| $$      /$$__  $$  \  $$$/  | $$  | $$ /$$/\  $$
#| $$$$$$$/| $$     |  $$$$$$$   \  $/   |  $$$$$$/| $$  \ $$
#| $$____/ |__/      \_______/    \_/     \______/ |__/  |__/
#| $$
#| $$
#|__/
#
# Personal Configurations of Prabesh Subedi
# ~/.bashrc
#

# aliases
source ~/.bash_aliases

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups
export EDITOR=/usr/bin/nvim

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

eval "$(starship init bash)"
