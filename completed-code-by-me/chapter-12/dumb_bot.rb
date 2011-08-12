require './wordplay'

while input = gets
  puts '>> ' + WordPlay.switch_pronouns(input).chomp + '?'
end

