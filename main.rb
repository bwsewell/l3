require 'sinatra'
require "sinatra/reloader" if development?
require 'net/http'
require 'json'

get '/' do
  content_type :json
  "Hello World"
end
