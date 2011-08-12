x = "Hello, world!"
puts x.tainted?

y = [x, x, x]
puts y.tainted?

z = 20 + 50
puts z.tainted?

a = File.open("somefile").readlines.first
puts a.tainted?

b = ENV["PATH"]
puts b.tainted?

c = [a, b]
puts c.tainted?

