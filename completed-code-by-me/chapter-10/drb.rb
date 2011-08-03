require 'drb'

remote_object = DRbObject.new nil, 'druby://columbia:33121'
puts remote_object.some_Method

