require 'sinatra'

def debug
  puts request.env.inspect
  puts "Authorization is: #{request.env['HTTP_AUTHORIZATION']}"
  puts "Params are: #{request.env['rack.request.form_hash']}"
end

post "/" do
  debug
end

get "/" do
  debug
end
