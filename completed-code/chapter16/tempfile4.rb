require 'tempfile'

Tempfile.open('myapp') do |f|
  f.puts "Hello"
  f.pos = 0
  f.print "Y"
  f.pos = f.size - 1
  f.print "w"
  f.flush
  f.pos = 0
  puts f.read
end
