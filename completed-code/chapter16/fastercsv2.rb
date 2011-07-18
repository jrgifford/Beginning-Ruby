require 'rubygems'
require 'fastercsv'
require 'pp'

csv = FasterCSV.read("data.csv", :headers => true)
pp csv

csv.each do |row|
  puts row['Name']
end

csv.each do |row|
  row['Location'] = "Nowhere"
end

puts csv.to_csv
