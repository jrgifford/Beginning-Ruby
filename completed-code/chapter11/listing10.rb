while x = gets
  next if x.tainted?
  puts "=> #{eval(x)}"
end

