OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do |variable|
  provider :github
  provider :twitter
  #provider :linkedin
  #provider :facebook
  #provider :google
  #provider :yahoo
  #provider :openid	
end