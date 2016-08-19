require 'sinatra'
require 'sinatra/reloader'
# require 'rubygems'
require 'builder' # to convert to xml data
require_relative './db'

get '/' do
	detail = query_db "SELECT COUNT(*) AS schedule_count FROM schedule"
	@count = detail[0]['schedule_count'] # query_db returns a hash
	erb :home
end

get '/details' do # list out complete schedule list
	@detail = query_db "SELECT * FROM schedule"
	erb :'details/index'
end

get '/details/:id' do # details of a particular schedule
  @schedule = query_db("SELECT * FROM schedule WHERE id = #{ params[:id] }").first
  erb :'details/show'
end

get '/details/:id/edit' do # page to edit the title and synopsis data
  @schedule = query_db("SELECT * FROM schedule WHERE id = #{ params[:id] }").first
  erb :'details/edit'
end

post '/details/:id' do # update db with edited data
	title = params['title'].gsub("'", "''")
	synopsis = params['synopsis'].gsub("'", "''")
	query_db "UPDATE schedule SET title='#{ title }', synopsis='#{ synopsis }' WHERE id = #{ params['id'] }"
	redirect to "/details/#{ params[:id] }"
end

get '/get_schedule.xml' do # builder called to convert to xml
	@details = query_db "SELECT * FROM schedule"
  builder :get_schedule
end
