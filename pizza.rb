require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb 'hello'
end 