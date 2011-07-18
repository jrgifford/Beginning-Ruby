require 'base64'
require 'digest/sha1'

puts Digest::SHA1.hexdigest('test')
puts Base64.encode64(Digest::SHA1.digest('test'))
