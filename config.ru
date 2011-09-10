require './main'     
require 'bowtie'

if ENV['BOWTIE_USER']
  BOWTIE_AUTH = {:user => ENV['BOWTIE_USER'], :pass => ENV['BOWTIE_PASS']}
end

map '/admin' do
  run Bowtie::Admin
end

map '/' do
  run Sinatra::Application
end
