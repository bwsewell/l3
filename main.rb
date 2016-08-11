require 'rubygems'
require 'sinatra'
require "sinatra/reloader" if development?
require 'net/http'
require 'net/https'
require 'uri'
require 'json'
require 'time'

DIRECTIONS_URI =  URI("https://maps.googleapis.com/maps/api/directions/json")
PLACES_URI =      URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json")
GEOCODE_URI =     URI("https://maps.googleapis.com/maps/api/geocode/json")
API_KEY =         "AIzaSyA4aFp7KfGDr9g6MEems8GjxtRqufkZBFE"

get '/' do
  haml :index
end

post '/' do
  content_type :json
  address = params[:address]
  household = params[:household]
  places = params[:places]
end
