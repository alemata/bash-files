### Aliases for shell ###
alias ll='ls -lh'
alias la='ls -AF'
alias ..='cd ..'
alias ..2='..;..'
alias ..3='..2;..'
alias syncronize_varios_artistas="rsync --delete -av 192.168.0.100:Music/Vario* ~/Music/"
alias syncronize_marcha="rsync --delete -av 192.168.0.100:Music/Marcha* ~/Music/"
alias huge_files="find ~ -type f -size +100000k -exec ls -lh {} \;"
alias wget="curl -O"
alias grni="grep -rni"
alias irb="pry"

### End of Aliases for shell ###

### Aliases for developer ###
# mySQL configuration
alias my='sudo /Library/StartupItems/MySQLCOM/MySQLCOM'
alias mysql='/usr/local/mysql/bin/mysql -u root -p'
alias mystart='my start'
alias mydown='my stop'
#alias mystart='sudo launchctl load -w /Library/StartupItems/com.mysql.mysqld.plist'
#alias mydown='sudo launchctl unload -w /Library/StartupItems/com.mysql.mysqld.plist'

# mongoDB configuration
alias mongod="mongod -f /etc/mongod.conf &"
alias mongo?="cat /var/db/mongodb/data/mongod.lock"
alias killmongo="__kill_mongodb"

# redis
#alias redis_start="redis-server config/redis/development.conf"
alias redis_start="redis-server /usr/local/etc/redis.conf"

# postgres
# alias pg_start="pg_ctl -D /var/db/postgres/hf -l /var/db/postgres/hf/server.log start"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /var/db/postgres/apihub.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Rails
alias et="RAILS_ENV=test"
alias eit="RAILS_ENV=integration_test"
alias srv="rails s"
alias migrate="rake db:migrate && rake db:migrate RAILS_ENV=test"
alias rreset="rake db:reset && rake db:reset RAILS_ENV=test"
alias drop_and_create="rake db:drop:all; rake db:create:all; cp db/schema-* db/schema.rb; rake db:schema:load; rake db:schema:load RAILS_ENV=test;"
alias be="bundle exec"

# git
alias undo_commit="git reset --soft HEAD^"
alias pull="git pull"
alias push="git push"
alias st="git st"
alias oo="__git_stash_show"
alias prune="git fetch --prune"
alias track="__git_track_branch"
### End of Aliases for developer ###

### Aliases by project ###

## Citrusbyte ##
CITRUSBYTE_HOME="~/citrusbyte"
alias api="cd $CITRUSBYTE_HOME/apihub"
alias api_start="api; shotgun -s puma"

alias mapi="cd $CITRUSBYTE_HOME/att-innovate/api"
alias mh="cd $CITRUSBYTE_HOME/att-innovate/mhealth"
alias hf="cd $CITRUSBYTE_HOME/att-innovate/HealthyFamily"
alias mapi_start="mapi; bundle exec shotgun -E development -p 9292 config.ru"
alias mapi_test="mapi; ps -eaf | grep beam | grep -v grep | awk '{print $2}' | xargs kill -9; rm -rf /tmp/.api.riak; bundle exec rake"
alias mhealth_start="mh; bundle exec shotgun -E development -p 9393 config.ru"
alias mh_test="mh; ps -eaf | grep beam | grep -v grep | awk '{print $2}' | xargs kill -9; rm -rf /tmp/.mhealth.riak; bundle exec rake"

##  Deviget  ##
DEVIGET_HOME="~/deviget"
alias pp="cd $DEVIGET_HOME/poketypoke"
alias ss2="cd $DEVIGET_HOME/simulscribe2.0"
alias pt="cd $DEVIGET_HOME/phonetag2"
alias ss1="cd $DEVIGET_HOME/_ss1"
alias sm="cd $DEVIGET_HOME/SMRTouch"
#alias api="cd $DEVIGET_HOME/smrtouch-api"
alias bj="cd $DEVIGET_HOME/billing_jean"
alias ba="cd $DEVIGET_HOME/Ballroom-Blitz/assets/www/app"
alias iba="ant install -f $DEVIGET_HOME/Ballroom-Blitz/build.xml"
alias load_aws="source $DEVIGET_HOME/.bash_aws_vars"
