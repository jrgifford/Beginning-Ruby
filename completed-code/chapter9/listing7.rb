f = File.open("text.txt", "r+")
puts f.gets
f.puts "This is a test"
puts f.gets
f.close

