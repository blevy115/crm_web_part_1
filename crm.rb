require_relative 'contact.rb'
require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end

get '/about' do
  erb :about_me
end


after do
  ActiveRecord::Base.connection.close
end
