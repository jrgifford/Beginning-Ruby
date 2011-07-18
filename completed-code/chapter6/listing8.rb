class Person
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end
end

class Doctor < Person
  def name
    "Dr. " + super
  end
end

a = Doctor.new("Cheeks")
puts a.name

# He's a little behind on his rounds..