# README

[![Join the chat at https://gitter.im/edubs5/pickem](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/elmerwu/pickem?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

###Getting Started in a OSX environment

Clone the repo.  Make sure you install Node and bower before running bundle install.
Run the server with

    rails s

Visit this url to see the app on your local machine:

    localhost:3000


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
``` bash
psql -d postgres -U {username}
```

PostresSQL Notes:
To start postgres manually
``` bash
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
```
To stop manually
``` bash
pg_ctl -D /usr/local/var/postgres stop -s -m fast
```
Check status of postgres
``` bash
pg_ctl -D /usr/local/var/postgres status
```

# For AngularJS front end

## Install NodeJS first

    brew install node

then install bower

    npm install -g bower

You need to have both NodeJS and bower installed in order to install the 'bower-rails' gem

After bower is installed you can see the rake tasks you now have

    rake -T bower

Bower uses the Bowerfile to manage dependencies, similar to the Gemfile in the root directory of the app.

Install Angular:

    rake bower:install

The bower dependencies are in this folder:

    vendor/assets/bower_components


## Rspec

To run all specs:

    bundle exec rspec

To specify specific folders:

    bundle exec rspec <__PATH__>/<FILE_NAME>
    ie.. bundle exec rspec spec/models/user_spec.rb


To run a specific spec in a file:

    bundle exec rspec <__PATH__>/<__FILE_NAME__>:<__ROW__>

    ie.. bundle exec rspec spec/models/user_spec.rb:18

## Heroku Deployment

Heroku deploys only the master branch:

    git push heroku master

but if you want to test your local branch before making a pull request
you can do this to deploy your local branch:

    git push heroku <LOCAL_BRANCH_NAME>:master

