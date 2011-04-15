### Aliases for shell ###
alias ll='ls -lh'
alias la='ls -AF'
alias ..='cd ..'
alias ..2='..;..'
alias ..3='..2;..'
alias huge_files="find ~ -type f -size +100000k -exec ls -lh {} \;"
alias wget="curl -O"

### End of Aliases for shell ###

### Aliases for developer ###
# mySQL configuration
alias mysql='/usr/local/mysql/bin/mysql -u root -p'
alias mystart='sudo launchctl load -w /Library/StartupItems/com.mysql.mysqld.plist'
alias mydown='sudo launchctl unload -w /Library/StartupItems/com.mysql.mysqld.plist'

# mongoDB configuration
alias mongod="mongod -f /etc/mongod.conf &"
alias mongo?="cat /opt/local/var/mongodb/data/mongod.lock"
alias killmongo="__kill_mongodb"

# redis
alias redis_start="redis-server config/redis/development.conf"

# Rails
alias et="RAILS_ENV=test"
alias eit="RAILS_ENV=integration_test"
alias srv="rails s"
alias migrate="rake db:migrate && rake db:migrate RAILS_ENV=test"
alias rreset="rake db:reset && rake db:reset RAILS_ENV=test"
alias drop_and_create="rake db:drop:all; rake db:create:all; cp db/schema-* db/schema.rb; rake db:schema:load; rake db:schema:load RAILS_ENV=test;"

# git
alias undo_commit="git reset --soft HEAD^"
alias pull="git pull"
alias push="git push"
alias st="git st"
alias oo="__git_stash_show"
alias prune="git fetch --prune"
### End of Aliases for developer ###

