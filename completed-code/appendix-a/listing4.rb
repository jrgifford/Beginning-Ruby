class MyClass
  def public_method
  end

  def private_method1
  end

  def private_method2
  end

  def protected_method
  end

  public :public_method
  private :private_method1, :private_method2
  protected :protected_method
end
