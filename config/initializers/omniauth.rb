# OmniAuth.config.logger = Rails.logger

ENV["FACEBOOK_APP_ID"] = "342319852509582"

ENV['FACEBOOK_SECRET'] = "bb2ac1c0483ffe5de1bafaf8c13e3fe5"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end