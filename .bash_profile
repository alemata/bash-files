# Homebrew configuration
export HOMEBREW_PREFIX='/usr/local'
export PATH=$PATH:/usr/local/sbin

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

# Ctags path presedence
export PATH="/usr/local/bin:$PATH"
# MySQL path addition
#export PATH="$PATH:/usr/local/mysql/bin"
#export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
#MongoDB path addition
export PATH="$PATH:/usr/local/mongodb/bin"
# For Android
# export PATH="$PATH:/Developer/Android/sdk/tools:/Developer/Android/sdk/platform-tools"
# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin
# MHEALTH Required when running tests
ulimit -n 2048
export RIAK_BIN_DIR=/usr/local/Cellar/riak/1.2.0-x86_64/libexec/bin

export CLICOLOR=1 # for terminal colors
export GREP_OPTIONS='--color=auto'


# History
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:ll:la:gitx:git st:pp:st:ss:pull:push:git pull:prune:git ss:git br:git sl:mvim:mh:ei"
export HISTTIMEFORMAT='%F @ %T - '

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Pretty PS1
PROMPT_COMMAND=__select_ps1
