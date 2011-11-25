if [ -f $HOME/.bash/.bash_completion ]; then
  . $HOME/.bash/.bash_completion
fi

if [ -f $HOME/.bash/.bash_functions ]; then
  . $HOME/.bash/.bash_functions
fi

if [ -f $HOME/.bash/.bash_aliases ]; then
  . $HOME/.bash/.bash_aliases
fi

export EDITOR='vim'

# MacPorts Installer addition on 2009-12-22_at_15:35:47: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
# MySQL path addition
export PATH="$PATH:/usr/local/mysql/bin"
#MongoDB path addition
export PATH="$PATH:/usr/local/mongodb/bin"

export CLICOLOR=1 # for terminal colors
export GREP_OPTIONS='--color=auto --line-number'

export BUNDLER_EDITOR="mate"

# History
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:ll:la:gitx:git st:pp:st:ss:pull:push:git pull:prune:git ss:git br:git sl"
export HISTTIMEFORMAT='%F @ %T - '

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Pretty PS1
PROMPT_COMMAND=__select_ps1
