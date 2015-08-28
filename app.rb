require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'quotes'
)

get '/' do
  erb :index
end

##RESTful API

def quote_id
  quote_params = {:id => params[:id]}
end


def quote_category
  quote_params = {:category => params[:category]}
end

## Get (all)
get '/api/quotes' do
  Quote.all.to_json
end


#Get by ID

get '/api/quotes/:id' do
  Quote.find(quote_id[:id]).to_json

end

#Get by category
get '/api/quotes/:category' do
  Quote.find(quote_category[:category])
end



## end RESTful API
