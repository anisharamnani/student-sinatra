require 'sinatra/base'
require './lib/thing'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do 
      "hello world!"
    end 
    get '/hello-world' do
    	@thing = Thing.new("Ashley", 6)
	 		@random_numbers = (1..20).to_a.shuffle
     	erb :hello
    end

		get '/artists' do 
			@artists = ["Elvis", "Michael Jackson"]
			erb :artists
		end

  end
end