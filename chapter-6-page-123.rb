class Square
  def initialize(side_length)
    @side_length = side_length
  end
  def self.test_method
    puts "Hello from the Square class!"
  end

  def area
    @side_length * @side_length
  end
end
