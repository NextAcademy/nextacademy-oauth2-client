# Omniauth NextAcademy

This repo is used to build a custom strategy for OmniAuth 2.0 for NextAcademy.

Instructions to use:

- Add the following into your `Gemfile`
```ruby
gem 'omniauth-oauth2'
```

- Add the file `lib/omniauth/strategies/nextacademy.rb` from this repo to the same path in your application. (The path design is suggested by omniauth's dev.)

- Change the url in `lib/omniauth/strategies/nextacademy.rb` if necessary
```ruby
	option :client_options, {
		site: "http://yourappdomain.com",
		authorize_url: "http://yourappdomain.com/oauth/authorize"
	}
```

- Add the file `config/initializer/omniauth.rb` from this repo to the same path in your application and change the client ID and client Secret if necessary.

- Add the route for omniauth callback as such
```ruby
# Example
get '/auth/nextacademy/callback' => 'sessions#create'
```

- You should be able to access the auth hash in your controller's action
```ruby
class SessionsController < ApplicationController
	def create
    	request.env['omniauth.auth'] 
        # => #<OmniAuth::AuthHash credentials=... info=... uid=...>
    end
end
```



