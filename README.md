# Installation and Setup

The web page is built using Sinatra, Ruby and SQLite3.

Please install ruby from https://www.ruby-lang.org/en/documentation/installation/

Then run these on your terminal

In OSX:
  Just run: sh install.sh

  Otherwise, run:

- gem install bundler
- bundle install
- sqlite3 test_schedule.db < schedule.sql
- ruby xml_init.rb
- ruby main.rb

Then visit the URL http://localhost:4567/
