require 'rubygems'
require 'fastercsv'
FasterCSV.parse(File.read("data.csv")) do |person|
  puts person.inspect
end

array_of_arrays = FasterCSV.parse(File.read("data.csv"))
array_of_arrays.each do |person|
  puts person.inspect
end

FasterCSV.foreach("data.csv") do |person|
  puts person.inspect
end

array_of_arrays = FasterCSV.read("data.csv")

people = [
  {:name => "Fred", :age => 10, :gender => :male},
  {:name => "Graham", :age => 34, :gender => :male},
  {:name => "Lorraine", :age => 29, :gender => :female}
]

csv_data = FasterCSV.generate do |csv|
  people.each do |person|
    csv << [person[:name], person[:age], person[:gender]]
  end
end

puts csv_data

FasterCSV.open("data.csv", "w") do |csv|
  people.each do |person|
    csv << [person[:name], person[:age], person[:gender]]
  end
end
