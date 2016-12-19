require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/:num_bottles' do
  num = 99
  num = params[:num_bottles].to_i
  @num_bottles = params[:num_bottles].to_i
  @next = @num_bottles -= 1
  erb :index
end
