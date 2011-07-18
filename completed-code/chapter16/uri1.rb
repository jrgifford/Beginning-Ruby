require 'uri'
puts URI.extract('Check out http://www.rubyinside.com/ or e-mail mailto:me@privacy.net').inspect

puts URI.extract('http://www.rubyinside.com/ and mailto:me@privacy.net', ['http']).inspect

email = %q{Some cool Ruby sites are http://www.ruby-lang.org/ and http://www.rubyinside.com/ and http://redhanded.hobix.com/}

URI.extract(email, ['http', 'https']) do |url|
  puts "Fetching URL #{url}"
  # Do some work here…
end
