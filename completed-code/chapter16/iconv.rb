require 'iconv'

converter = Iconv.new('utf-8', 'iso-8859-1')
utf8_string = "This is a test"
iso_string = converter.iconv(utf8_string)

Iconv.open('utf-8', 'iso-8859-1') do |converter|
  utf8_string = "This is a test"
  iso_string = converter.iconv(utf8_string)
end

puts Iconv.iconv("utf-8", "iso-8859-1", "This is a test").to_s