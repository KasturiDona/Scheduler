#!/bin/sh
set -x # echo all commands

gem install bundler
bundle install
sqlite3 test_schedule.db < schedule.sql
ruby xml_init.rb
ruby main.rb
