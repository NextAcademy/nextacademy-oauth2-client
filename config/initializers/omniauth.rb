module OmniAuth
  module Strategies
    # tell OmniAuth to load our strategy
    # defined in lib/nextacademy.rb
    autoload :Nextacademy, Rails.root.join('lib', 'omniauth', 'strategies', 'nextacademy')
  end
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :nextacademy, ENV['nextacademy_auth_id'], ENV['nextacademy_auth_secret']
end
