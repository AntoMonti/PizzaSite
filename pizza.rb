require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizza.db"

class Product < ActiveRecord::Base

end

get '/' do
	@products = Product.all
	erb :index1
end 

get '/about' do
	erb :about
end 

get '/contacts' do
	erb :contacts
end

post '/cart' do
	erb :cart
end

post '/form' do
	erb 'thank you'
end
