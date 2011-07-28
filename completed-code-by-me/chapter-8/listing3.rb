class BadDataException < RunTimeError
end

class Person
  def initialize(name)
    raise BadDataException, "No name present" if name.empty?
  end
end

fred = Person.new('')
