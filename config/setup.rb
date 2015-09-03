ENV['RACK_ENV'] = 'development' unless ENV['RACK_ENV']
APP_ROOT = File.expand_path('..', File.dirname(__FILE__)) unless defined? APP_ROOT

Bundler.require(:default)

