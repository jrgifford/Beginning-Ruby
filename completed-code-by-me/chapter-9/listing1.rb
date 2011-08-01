class MyFile
  attr_reader :handle

  def initialize(filename)
    @handle = File.new(filename, "r")
  end

  def finished
    @handle.close
  end
end

f = MyFile.new("text.txt")
puts f.handle.gets
f.finished

