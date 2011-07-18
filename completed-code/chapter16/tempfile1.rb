require 'tempfile'
f = Tempfile.new('myapp')
f.puts "Hello"
puts f.path
f.close
