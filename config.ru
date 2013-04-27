require 'sinatra'
require 'open-uri'

Sinatra::Base.set(:run, false)
Sinatra::Base.set(:env, :development)

options '/' do
  headers 'Access-Control-Allow-Origin' => '*'
  headers 'Access-Control-Allow-Methods' => 'GET'
end

get '/' do
  headers 'Access-Control-Allow-Origin' => '*'
  headers 'Access-Control-Allow-Methods' => 'GET'
  web_contents  = open('http://www.rouming.cz/roumingRSS.php') {|f| f.read }
end

run Sinatra::Application

