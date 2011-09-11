require './main'     
require 'bowtie'

if ENV['ADMIN_USER'] && ENV['ADMIN_PASS']
  BOWTIE_AUTH = {:user => ENV['ADMIN_USER'], :pass => ENV['ADMIN_PASS']}
end

map '/admin' do
  run Bowtie::Admin
end

map '/' do
  run Sinatra::Application
end
