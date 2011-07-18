require 'rubygems'
require 'net/ping'

if Net::PingExternal.new('www.google.com').ping
  puts "Pong!"
else
  puts "No response"
end
