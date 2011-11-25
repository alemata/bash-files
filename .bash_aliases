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

### Aliases by project ###

##  Deviget  ##
alias pp='cd ~/grid/poketypoke'
alias ss='cd ~/grid/simulscribe2.0'
alias pt='cd ~/grid/phonetag2'
alias ss1='cd ~/grid/_ss1'
alias sm='cd ~/grid/SMRTouch'
alias api='cd ~/grid/SMRTouch-API'
alias bj="cd ~/grid/billing_jean"
alias ba='cd ~/grid/Ballroom-Blitz/assets/www/app'
alias iba='ant install -f ~/grid/Ballroom-Blitz/build.xml'

alias load_aws='source ~/grid/.bash_aws_vars'

## Android ##
alias syncronize_android="rsync --delete -av Macarena.local:/Developer/Android/* /Developer/Android/."
