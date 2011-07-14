class ParentClass
  def method1
    puts "Hello from method1 in the ParentClass!"
  end

  def method2
    puts "Hello from method2 in the ParentClass!"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in the ChildClass"
  end
end

myobject = ChildClass.new
myobject.method1
myobject2 = ParentClass.new
myobject2.method2
