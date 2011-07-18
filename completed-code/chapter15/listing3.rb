require 'rubygems'
require 'net/ping'

if Net::PingTCP.new('www.google.com', 80).ping
  puts "Pong!"
else
  puts "No response"
end
