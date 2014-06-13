require './idea'

class IdeaBoxApp < Sinatra::Base
	configure :development do 
		register Sinatra::Reloader
	end

	get '/' do
		# "<h1>Hello, World!</h1><blockquote>I guess I always felt even if the world came to an end, McDonald's would still be open. <cite>Susan Beth Pfeffer</cite></blockquote>"
		erb :index
	end

	post '/' do 
	# 	# 1. Create an idea based on the form parameters
	 	idea = Idea.new(params['idea_title'], params['idea_description'])
	# 	# 2. Store it
		idea.save
	# 	# 3. Send us back to the idex page to see all ideas
		"Creating an IDEA"
	end

	not_found do
		erb :error
	end

end