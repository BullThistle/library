require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/book'
require 'pry'
require 'pg'

DB = PG.connect({:dbname => 'library'})

get '/' do
  erb:library
end

get '/librarian' do
  erb:librarian
end

get '/patron' do
  erb:patron
end

get '/create' do
  erb:create
end

post '/create' do

end

get '/read' do
  erb:read
end

post '/read' do

end

get '/update' do
  erb:update
end

get '/delete' do
  erb:delete
end

get '/list' do
  erb:list
end

get '/search_by_author' do
  erb:search_by_author
end

post '/search_by_author' do

end

get '/search_by_title' do
  erb:search_by_title
end

post '/search_by_title' do

end

get '/overdue' do
  erb:overdue
end

get '/checkout' do
  erb:checkout
end

get '/checkout_history' do
  erb:checkout_history
end

get '/patron_overdue' do
  erb:patron_overdue
end
