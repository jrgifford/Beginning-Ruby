require 'tempfile'

f = Tempfile.new('myapp')
f.puts "Hello"
f.pos = 0
f.print "Y"
f.pos = f.size - 1
f.print "w"
f.flush
f.pos = 0
puts f.read
f.close!
