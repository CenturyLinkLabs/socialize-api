require 'uri'

Airbrake.configure do |config|
  config.api_key = ENV['ERRBIT_API_KEY']

  if ENV['ERRBIT_PORT']
    config.host = URI(ENV['ERRBIT_PORT']).host
    config.port = URI(ENV['ERRBIT_PORT']).port
  end

  config.development_environments = []

  #config.ignore << 'ActionController::UnknownHttpMethod'
  #config.ignore << 'URI::InvalidURIError'

  # Adding the current Rails environment to the list of errbit
  # development_environments disables errbit reporting. Want
  # to disable errbit if the an API key hasn't been provided.
  unless ENV['ERRBIT_API_KEY']
    config.development_environments << Rails.env
  end
end
