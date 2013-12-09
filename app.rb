require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/hello-world' do
    	 @random_numbers = [
      	1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
      	11, 12, 13, 14, 15, 16, 17, 18, 19, 20
      	]
      erb :hello
    end

		get '/artists' do 
			@artists = ["Elvis", "Michael Jackson"]
			erb :artists
		end

  end
end