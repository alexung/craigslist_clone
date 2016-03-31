# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'dotenv'

# Dotenv
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
end

# Initialize the Rails application.
Rails.application.initialize!


