require 'csv'
CSV.open('text.txt', 'r') do |person|
puts person.inspect
end

