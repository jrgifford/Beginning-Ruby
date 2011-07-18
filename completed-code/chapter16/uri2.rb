require 'uri'
a = URI.parse('http://www.rubyinside.com/')
puts a.scheme
puts a.host
puts a.port
puts a.path
puts a.query
