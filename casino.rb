require 'sinatra'
require 'pry'
require_relative 'hi_lo'


get '/' do
  erb :index
end

get '/hilo' do
  @hilo = HiLo.new
  erb :hi_lo
end

post '/hilo' do
  params['@bet']
  "Your bet is #{@bet}"
  erb :hi_lo_number1

end

post '/hi_lo_number1' do
  params ['@bet', '@guess']
  erb :hi_lo_number2

end
