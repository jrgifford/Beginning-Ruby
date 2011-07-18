require 'digest/sha1'
require 'digest/md5'
puts Digest::SHA1.hexdigest('password')
puts Digest::SHA1.hexdigest('test' * 1000)
puts Digest::MD5.hexdigest('test' * 1000)
