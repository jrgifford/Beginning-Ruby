require 'drb'

class OurClass
  def some_Method
    "Some test text"
  end
end

DRb.start_service nil, OurClass.new
puts "DRb server running #{DRb.uri}"
trap("INT") { DRb.stop_service }
DRb.thread.join
