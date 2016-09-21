# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias 'bk=cd $OLDPWD'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------

# show hidden files/directories only
alias lh='ls -d .*'
alias lsd='ls -aFhlG'
alias l='ls -al'
# Colorize output, add file type indicator, and put sizes in human readable format
alias ls='ls -GFh'
# Same as above, but in long listing format
alias ll='ls -GFhl'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
# directories sorted by size
alias 'dus=du -sckx * | sort -nr'
# sort files in current directory by the number of words they contain
alias 'wordy=wc -w * | sort | tail -n10'
# number of files (not directories)
alias 'filecount=find . -type f | wc -l'

# -------------------------------------------------------------------
# ssh hosts
# -------------------------------------------------------------------

alias mydevil-ttt-dev='ssh s6.mydevil.net -p 22 -l ttt-dev'
alias mydevil-ttt='ssh s7.mydevil.net -l ttt'
alias mydevil-santri='ssh s2.mydevil.net -l santri'
alias mydevil-ttt-dev-db='ssh -f ttt-dev@s6.mydevil.net -L 8543:pgsql6.mydevil.net:5432 -N'

# -------------------------------------------------------------------
# git
# -------------------------------------------------------------------

alias g='git'
alias gp='git push'
alias gl='git pull --rebase'

# -------------------------------------------------------------------
# globals
# -------------------------------------------------------------------

alias -g L="|less" # Write L after a command to page through the output.
alias -g TL='| tail -20'
alias -g NUL="> /dev/null 2>&1" # You get the idea.


# -------------------------------------------------------------------
# others
# -------------------------------------------------------------------

alias _='sudo'
alias a="~/ansible/bin/ansible"
alias ap="~/ansible/bin/ansible-playbook"
