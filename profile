# Homebrew configuration
export HOMEBREW_PREFIX='/usr/local'
export PATH=$PATH:/usr/local/sbin

if [ -f $HOME/.bash/completion ]; then
  . $HOME/.bash/completion
fi

if [ -f $HOME/.bash/functions ]; then
  . $HOME/.bash/functions
fi

if [ -f $HOME/.bash/aliases ]; then
  . $HOME/.bash/aliases
fi

export EDITOR='vim'
export BUNDLER_EDITOR="mate"

# Ctags path presedence
export PATH="/usr/local/bin:$PATH"
# MySQL path addition
#export PATH="$PATH:/usr/local/mysql/bin"
#export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
#MongoDB path addition
#export PATH="$PATH:/usr/local/mongodb/bin"

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

export CLICOLOR=1 # for terminal colors
export GREP_OPTIONS='--color=auto'

# History
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:ll:la:gitx:git st:pp:st:ss:pull:push:git pull:prune:git ss:git br:git sl:mvim:mh:git log:git diff:api:mapi"
export HISTTIMEFORMAT='%F @ %T - '

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Pretty PS1
PROMPT_COMMAND=__select_ps1
