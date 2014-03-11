Rspec Legacy Rails App (Tweetegy.com)
=====================================

Example Rails app to demonstrate a fairly recent version of Rspec, Capybara and Factory Girl working with legacy versions of Rails (2.3.11) and Ruby (1.8.7). Note that this application does not specify which version of Ruby to use. However, it has, of course, been tested on Ruby 1.8.7. I expect it will work in later versions of Ruby too!

This application is NOT an example or Rails best practices! Its only purpose is to demonstrate running RSpec Model and Integration specs against the above mentioned version of Rails and Ruby.

One other thing to note is that I have ONLY tried out Model and Integration (or Feature) specs in this app. This is mainly becuase these are the main set of spec types that I usually work with. Having said that, the Controller specs would be useful if we need to work with legacy Rails application that expose a RESTful API for a single page app, for example. Unfortunately, I can confirm that Controller specs do not appear to work in this setup, but feel free to have a go!

For more details about the story check the following blog: http://www.tweetegy.com/2014/03/legacy-rails-app-well-2-3-x-almost-latest-rspec-capybara-factory-girl/

## Installation / Try this out at home

Clone this repo to your own computer

Run the following to install required gems (--path is optional)
    bundle install --path vendor/bundle

Run the following to setup the database:
    RAILS_ENV=test bundle exec rake db:setup

Run the following to see the specs pass!:
    bundle exec rspec spec
