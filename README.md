# README

[![Join the chat at https://gitter.im/elmerwu/pickem](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/elmerwu/pickem?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

###Getting Started
Install ruby version 2.2.3

``` bash
rvm install ruby-2.2.3
```

Create project gemset
``` bash
rvm use 2.2.3@pickem --create
```

To list the current project gemset
``` bash
rvm gemset list
```

##Installing PostgresSQL
Using Brew (Mac os)
``` bash
brew install postgresql
```
Once this command is finished run
``` bash
# To have launchd start postgresql at login:
ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents

# Then to load postgresql now:
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```
By default the postgresql user is your current OS X username with no password.