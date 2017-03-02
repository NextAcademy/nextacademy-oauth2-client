# Omniauth NextAcademy

This repo is used for NextAcademy's strategy for OmniAuth 2.0

Instructions to use:

1. Add the following into your `Gemfile`
```ruby
gem 'omniauth-oauth2'
```

2. Add the file `lib/omniauth/strategies/nextacademy.rb` from this repo to the same path in your application. (The path design is suggested by omniauth's dev.)


3. Add the file `config/initializer/omniauth.rb` from this repo to the same path in your application and change the client ID and client Secret if necessary.

4. Add the route for omniauth callback as such
```ruby
# Example
get '/auth/nextacademy/callback' => 'sessions#create'
```

5. You should be able to access the auth hash in your controller's action
```ruby
class SessionsController < ApplicationController
	def create
    	request.env['omniauth.auth'] 
        # => #<OmniAuth::AuthHash credentials=... info=... uid=...>
    end
end
```



