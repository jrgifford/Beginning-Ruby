line_count = 0
File.open("./skype-editorial-1.txt").each { |line| line_count += 1 }
puts line_count
