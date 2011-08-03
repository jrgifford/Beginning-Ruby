if RUBY_PLATFORM =~ /win32/
  puts "We're in Windows!"
elsif RUBY_PLATFORM =~ /linux/
  puts "We're in Linux!"
elsif RUBY_PLATFORM =~ /darwin/
  puts "We're in Mac OS X!"
elsif RUBY_PLATFORM =~ /freebsd/
  puts "We're in FreeBSD!"
elsif RUBY_PLATFORM =~ /java/
     puts "JRuby?! That's deep man, real deep!"
else
  puts "We're running under some secret government OS. :O"
end
