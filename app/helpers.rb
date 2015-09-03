require_all 'app/application_helpers'

module Sinatra
  module ApplicationHelpers
    
    def self.registered(app)
      app.helpers BaseHelper
    end
    
  end
end