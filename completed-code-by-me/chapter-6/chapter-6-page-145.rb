class AllVowels
  include Enumerable
  
  @@vowels = %w{a e i o u}
  def each
    @@vowels.each { |v| yield v }
  end
end


x = AllVowels.new
x.each { |v| puts v }

puts x.collect { |i| i + "x" }.inspect
puts x.detect { |i| i > "j" }.inspect
puts x.select { |i| i > "j" }.inspect
puts x.sort.inspect
puts x.max.inspect
puts x.min.inspect
