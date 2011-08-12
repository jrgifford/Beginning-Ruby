class Class
  def add_accessor(accessor_name)
    self.class_eval %Q{
       def #{accessor_name}
         @#{accessor_name}
       end
       
       def #{accessor_name}=(value)
         @#{accessor_name} = value
       end
    }
  end
end

class MyClass
  add_accessor :test
end

x = MyClass.new
x.test = 10
puts x.test
