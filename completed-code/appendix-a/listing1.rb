class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    return @name
  end

  def age
    return @age
  end
end

person1 = Person.new('Chris', 25)
person2 = Person.new('Laura', 23)
puts person1.name
puts person2.age

class Person
  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end

person1.name = "Barney"
person2.age = 101
puts person1.name
puts person2.age
