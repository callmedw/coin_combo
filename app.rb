require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')

get('/') do
  erb(:index)
end

get('/output') do
  quarters = params.fetch('quarters').to_i
  dimes = params.fetch('dimes').to_i
  nickels = params.fetch('nickels').to_i
  @output = params.fetch('number').to_i.coin_combinations(quarters, dimes, nickels)
  erb(:output)
end
