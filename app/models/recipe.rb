class Recipe
	include HTTParty
	key_value = ENV['FOOD2FORK_KEY']
	hostport =  'www.food2fork.com'
	base_uri "#{hostport}/api"
	default_params key: key_value
	format :json
  
	def self.for term
		get("/search", query: {q: term})["recipes"]
	end
end