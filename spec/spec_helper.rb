ENV["RAILS_ENV"] ||= 'test'

require File.expand_path(File.join(File.dirname(__FILE__),'..','config','environment'))
Bundler.require(:test)
FactoryGirl.find_definitions
require 'capybara/rspec'
require 'capybara/rails'

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.color_enabled = true
  config.formatter = :documentation

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  config.include ActionController::UrlWriter
  config.include CapybaraHelpers
  config.include Capybara::DSL
end
