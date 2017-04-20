require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

get('/') do
  erb(:index)
end

get('/output') do
  @output = params.fetch('number').to_i.coin_combinations()
  erb(:output)
end
