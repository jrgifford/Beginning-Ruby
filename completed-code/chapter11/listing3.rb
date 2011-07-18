class MyClass
  def initialize
    @my_variable = 'Hello, world!'
  end
end

obj = MyClass.new
obj.instance_eval { puts @my_variable }

