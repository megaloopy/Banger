Unsplash.configure do |config|    
  config.application_id     = ENV["unsplash_id"]
  config.application_secret = ENV["unsplash_secret"]
  config.application_redirect_uri = ENV["banger_url"]
  config.utm_source = ENV["banger_app"]
end


