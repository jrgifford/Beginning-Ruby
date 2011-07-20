class Drawing
  def Drawing.give_me_a_cirle
    Circle.new
  end

  class Line
  end

  class Circle
    def what_am_i
      "This is a Circle"
    end
  end
end

a = Drawing.what_am_i
puts a.what_am_i
a = Drawing::Circle.new
19 puts a.what_am_i
20 a = Circle.new
puts a.what_am_i   
