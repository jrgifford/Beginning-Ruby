require 'tempfile'
f = Tempfile.new('myapp')
f.puts "Hello"
f.close
f.open
puts f.read
f.close!
