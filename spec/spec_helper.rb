require_relative './setup_test_database'

#set environment to test
ENV['ENVIRONMENT'] = 'test'

#bring in the contents of the app.rb file. The below is the equivalent of require-relative ../app.rb
require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkManager

RSpec.configure do |config|
    config.before(:each) do
      setup_test_database
    end
  end
