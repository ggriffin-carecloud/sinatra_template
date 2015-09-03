ENV['RACK_ENV'] ||= "test"

# require all gems from Gemfile (:default and :test namespace)
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

require File.expand_path(File.dirname(__FILE__) + "/../app/main")