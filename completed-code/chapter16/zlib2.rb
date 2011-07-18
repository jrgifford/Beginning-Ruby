require 'zlib'

test_text = 'this is a test string' * 100
puts "Original string is #{test_text.length} bytes long"
compressed_text = Zlib::Deflate.deflate(test_text)
puts "Compressed data is #{compressed_text.length} bytes long"
uncompressed_text = Zlib::Inflate.inflate(compressed_text)
puts "Uncompressed data is back to #{uncompressed_text.length} bytes in length"
