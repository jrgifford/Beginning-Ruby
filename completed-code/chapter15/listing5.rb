require 'resolv'

Resolv.each_address("www.google.com") do |ip|
  puts ip
end
