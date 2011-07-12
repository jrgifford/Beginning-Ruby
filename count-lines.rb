text=''
line_count = 0
File.open("./skype-editorial-1.txt").each do |line|
  line_count += 1
  text << line 
end

puts "#{line_count} lines"
