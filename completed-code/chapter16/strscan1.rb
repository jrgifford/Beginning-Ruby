require 'strscan'

string = StringScanner.new "This is a test"
puts string.scan(/\w+/)
puts string.scan(/\s+/)
puts string.scan(/\w+/)
puts string.scan(/\s+/)
puts string.rest
