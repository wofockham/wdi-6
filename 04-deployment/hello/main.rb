require 'sinatra'

get '/' do
  "Hello world. It is now #{ Time.now }"
end
