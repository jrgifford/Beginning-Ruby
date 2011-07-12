lines = File.readlines("./skype-bought-by-microsoft.txt")
line_count = lines.size
text = lines.join
word_count = text.split.length
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, ' ').length
paragraph_count = text.split(/\n\n/).length
setence_count = text.split(/\.|\?|!/).length

puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{setence_count} setences"
puts "#{setence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / setence_count} words per setence (average)"
