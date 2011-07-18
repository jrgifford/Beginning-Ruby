File.open("text.txt").each { |line| puts line }
File.open("text.txt").each(',') { |line| puts line }
File.open("text.txt").each_byte { |byte| puts byte }

File.open("text.txt") do |f|
  2.times { puts f.gets }
end

File.open("text.txt") do |f|
  2.times { puts f.gets(',') }
end

File.open("text.txt") do |f|
  2.times { puts f.getc }
end

puts File.open("text.txt").readlines.join("--")

File.open("text.txt") do |f|
  puts f.read(6)
end

