#!/bin/bash

bundle check || bundle install

find . -name *.pid -delete
yarn install
bundle exec rails s -b 0.0.0.0
