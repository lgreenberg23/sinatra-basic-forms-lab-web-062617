require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :index
		# redirect '/new'
	end



	get '/new' do 
		erb :create_puppy
	end



	post '/puppy' do 
		@puppy = Puppy.new(params[:name], params[:breed], params[:age])
		# binding.pry
		erb :display_puppy
		# redirect '/new' 
	end

end