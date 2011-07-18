class Fixnum
  alias_method :old_plus, :+

  def +(other_number)
    return 5 if self == 2 && other_number == 2
    old_plus other_number
  end
end

puts 2 + 2
