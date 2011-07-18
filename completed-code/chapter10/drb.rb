require 'drb'

remote_object = DRbObject.new nil, 'druby://:64500'
puts remote_object.some_method

