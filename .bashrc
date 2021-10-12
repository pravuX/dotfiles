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

eval "$(starship init bash)"
