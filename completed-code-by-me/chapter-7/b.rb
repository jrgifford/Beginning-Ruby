# Having to use load instead of require for some weird reason - about to check the errata from appress
load 'a.rb'
puts "Hello from b.rb"
load 'a.rb'
puts "Hello again from b.rb"
