require 'bundler'
Bundler.require

ActiveRecord::establish_connection(
  :adapter => 'postgresql',
  :database => 'quotes'
)
