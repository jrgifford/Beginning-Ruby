require 'digest/sha1'

puts "Enter the password to use this program:"
password = gets
if Digest::SHA1.hexdigest(password) == '24b63c0840ec7e58e5ab50d0d4ca243d1729eb65'
  puts "You've passed!"
else
  puts "Wrong!"
  exit
end
