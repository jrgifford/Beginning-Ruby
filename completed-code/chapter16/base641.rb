require 'base64'
puts Base64.encode64('testing')

begin
  puts Base64.encode64(File.read('/bin/bash'))
rescue
end

puts Base64.decode64(Base64.encode64('testing'))