# Having to use load instead of require for some weird reason - about to check the errata from appress
require 'a'
puts "Hello from b.rb"
require 'a'
puts "Hello again from b.rb"
