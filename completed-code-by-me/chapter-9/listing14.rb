require 'csv'
people = CSV.parse(File.read('text.txt'))
puts people[0][0]
puts people[1][0]
puts people[2][0]