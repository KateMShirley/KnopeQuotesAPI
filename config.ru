require './app'
require './models/quoteModel'
require 'dotenv'
Dotenv.load

run Sinatra::Application
