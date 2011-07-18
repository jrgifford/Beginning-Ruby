require 'uri'
url = 'http://www.x.com:1234/test/1.html?x=y&y=z#top'
puts URI.parse(url).port
puts URI.parse(url).path
puts URI.parse(url).query
puts URI.parse(url).fragment
