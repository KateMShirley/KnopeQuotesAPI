require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'quotes'
)

get '/' do
  erb :index
end



## authentication###################################

# @key = ENV['API_key']


##RESTful API
#
# def quote_id
#   quote_params = {:id => params[:id]}
# end
#
#
# def quote_category
#   quote_params = {:category => params[:category]}
# end

## Get (all)
get '/api/quotes' do
  QuoteModel.all.to_json
end


#Get by ID

get '/api/quotes/:id' do
  QuoteModel.find(params[:id]).to_json

end

# #Get by category
# get '/api/quotes/:category' do
#   Quote.find(params[:category])
# end

## CREATE
post '/api/quotes' do
  request_body = JSON.parse request.body.read.to_s
  QuoteModel.create(request_body).to_json
end

## update

put '/api/quotes/:id' do
  request_body = JSON.parse(request.body.read.to_s)
  @id = params[:id]
  @quote = QuoteModel.find(@id)
  @quote.sentence = request_body[:sentence]
  @quote.category = request_body[:category]
  @quote.season = request_body[:season]
  @quote.ep = request_body[:ep]
  @quote.save
  @quote.to_json
end

patch '/api/quotes/:id' do
  request_body = JSON.parse(request.body.read.to_s)
  @id = params[:id]
  @quote = QuoteModel.find(@id)
  @quote.sentence = request_body[:sentence]
  @quote.category = request_body[:category]
  @quote.season = request_body[:season]
  @quote.ep = request_body[:ep]
  @quote.save
  @quote.to_json
end

##delete
delete '/api/quotes/:id' do
  QuoteModel.destroy(params[:id]).to_json
end

## end RESTful API
