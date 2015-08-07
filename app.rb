require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word') do
  user_string=params.fetch('user_string')
  word_find=params.fetch('word')
  @word = user_string.word_count(word_find)
  erb(:title)
end
