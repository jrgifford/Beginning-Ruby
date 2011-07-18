require 'zlib'

Zlib::GzipWriter.open('my_compressed_file.gz') do |gz|
  gz.write 'This data will be compressed automatically!'
end

Zlib::GzipReader.open('my_compressed_file.gz') do |my_file|
  puts my_file.read
end
