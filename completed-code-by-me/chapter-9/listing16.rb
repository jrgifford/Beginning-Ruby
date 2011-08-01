require 'csv'
people = CSV.read('text.txt')
laura = people.find { |person| person[0] =~ /Laura/ }
laura = "Lauren Smith"

CSV.open('text.txt', 'w') do |csv|
  people.each do |person|
    csv << person
  end
end