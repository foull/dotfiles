# -------------------------------------------------------------------
# fou! custom commands
# -------------------------------------------------------------------

# s -> dotfiles/bin (SSH)
alias s="~/dotfiles/bin/s.sh"

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias bk='cd $OLDPWD'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------

# show hidden files/directories only
alias lh='ls -d .*'
alias lsd='ls -aFhl'
alias l='exa -la --group-directories-first -b --icons --header --long --git'
# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'
# Same as above, but in long listing format
alias ll='ls -GFhl'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
# directories sorted by size
alias dus='du -sckx * | sort -nr'
# sort files in current directory by the number of words they contain
alias wordy='wc -w * | sort | tail -n10'
# number of files (not directories)
alias filecount'=find . -type f | wc -l'

# -------------------------------------------------------------------
# git
# -------------------------------------------------------------------

alias g='git'
alias gs='git st'
alias gp='git ps'
alias gl='git up'

# -------------------------------------------------------------------
# globals
# -------------------------------------------------------------------

#alias -g L="|less" # Write L after a command to page through the output.
#alias -g TL='| tail -20'
#alias -g NUL="> /dev/null 2>&1" # You get the idea.


# -------------------------------------------------------------------
# others
# -------------------------------------------------------------------

alias _='sudo'
#alias a="~/ansible/bin/ansible"
#alias ap="~/ansible/bin/ansible-playbook"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"
