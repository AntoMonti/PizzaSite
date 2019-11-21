require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizza.db"

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
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

post '/place_order' do
	@order = Order.create params[:order]
	erb 'Thank you!'
end

post '/cart' do
	@orders_input = params[:order]
	@items = parse_orders_input @orders_input

	@items.each do |item|
		item[0] = Product.find(item[0])
	end
	erb :cart
end

def parse_orders_input orders_input
	s1 = orders_input.split(/,/)

	arr = []

	s1.each do |x|
		s2 = x.split(/\=/)
		s3 = s2[0].split(/_/)

		id = s3[1]
		cnt = s2[1]

		arr2 = [id, cnt]
		arr.push arr2
	end
	return arr
end



post '/form' do
	erb 'thank you'
end
