require_all 'app/filters', 'app/helpers'

class SatelliteApp < Sinatra::Base
  helpers Sinatra::JSON

  enable :raise_errors

  #register filters and helpers

  
  configure do
    set :allow_methods, [:get, :post, :options, :delete]
    set :allow_credentials, true
    set :protection, :except => [:remote_referrer, :json_csrf]
    set :max_age, '1728000'
    set :public_folder, 'public'

    # Log4r::StderrOutputter.new('console')
    # Log4r::FileOutputter.new('logfile', :filename => 'log/sinatra.log', :trunc => false)
    # log = Log4r::Logger.new('logger')
    # log.add('console', 'logfile')

    ## setup log level based on yml
    # begin
    #   log.level = config["logging_level"]
    # rescue => e
    #   log.level = Log4r::ERROR
    # end

    # ActiveRecord::Base.logger = log

  end
  
  configure :test do  
  end

  configure :development do  
  end

  configure :qa do
  end

  configure :staging do
  end

  configure :production do
    Log4r::Logger['logger'].level = Log4r::WARN
  end

  # Log4r::Logger['logger'].info "Environment Mode: #{settings.environment}"

  not_found do
    logger.warn 'attempted route that does not exist'
    %{Sorry, we couldn't find the resource you were looking for.}
  end


  require_all 'app/models', 'lib'

end
