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
export BUNDLER_EDITOR="mate"

# Rake completion script
#complete -C /opt/local/etc/bash_completion.d/rake-completion.rb -o default rake

# Ctags path presedence
export PATH="/usr/local/bin:$PATH"
# MySQL path addition
export PATH="$PATH:/usr/local/mysql/bin"
#MongoDB path addition
export PATH="$PATH:/usr/local/mongodb/bin"
# For Android
export PATH="$PATH:/Developer/Android/sdk/tools:/Developer/Android/sdk/platform-tools"

export CLICOLOR=1 # for terminal colors
export GREP_OPTIONS='--color=auto --line-number'

# History
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:ll:la:gitx:git st:pp:st:ss:pull:push:git pull:prune:git ss:git br:git sl:mvim"
export HISTTIMEFORMAT='%F @ %T - '

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Pretty PS1
PROMPT_COMMAND=__select_ps1
