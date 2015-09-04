require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'quotes'
)

get '/' do

  @key = ENV['API_KEY']
  puts @key
  erb :index
end


##RESTful API

## Get (all)
get '/api/quotes' do
  QuoteModel.all.to_json
end


#Get by ID

get '/api/quotes/:id' do
  QuoteModel.find(params[:id]).to_json
end

## CREATE
post '/api/quotes' do

  ##AUTHENTICATION NOT YET IMPLETEMENTED FULLY...NEED JQUERY OBJECT###
  # make sure you document a required params
  # $.params jQuery method based on {key: value}
        @is_authorized = false;
        if params[:api_key].nil? == false && params[:api_key] == ENV[API_KEY]
          @is_authorized = true
        end

        if @is_authorized == false
          return {:status => '403', :message => 'not authorized'}.to_json
        end

  ###END AUTH TESTING

  request_body = JSON.parse request.body.read.to_s
  QuoteModel.create(request_body).to_json
end

## UPDATE

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
