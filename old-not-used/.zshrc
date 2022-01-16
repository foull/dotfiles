# set directory for custom zsh configs
ZSH_CUSTOM=$HOME/.config/zsh/custom

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Update PATH
export PATH="~/bin:$PATH"

# theme
ZSH_THEME='fou'

# plugins
plugins=(git git-flow osx z npm brew docker emoji)

# source
source ~/.config/zsh/functions.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/git-flow-completion/.git-flow-completion.zsh


#
# others...
#

export EDITOR=vim

# eval "$(~/.noz/bin/noz init -)"
#eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

