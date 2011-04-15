### Functions for shell ###
__git_stash_show(){
  git stash show stash@{$1} -p
};

__git_branch(){
  local b="$(git symbolic-ref HEAD 2> /dev/null)"
  if [ -n "$b" ]; then
    printf "[%s]" "${b##refs/heads/}";
  fi
};

alias __set_git_ps1='export PS1="\[$(tput setaf 1)\]$(__git_branch)\[$(tput setaf 6)\]@\W\$ \[$(tput sgr0)\]"'
alias __set_normal_ps1='PS1="\[$(tput setaf 6)\]\u@\h:\W\$ \[$(tput sgr0)\]"'

__select_ps1(){
  [ -d .git ] && __set_git_ps1 || __set_normal_ps1
};

__kill_mongodb(){
  if [ -s /opt/local/var/mongodb/data/mongod.lock ]; then
    kill `cat /opt/local/var/mongodb/data/mongod.lock`
  fi
};
