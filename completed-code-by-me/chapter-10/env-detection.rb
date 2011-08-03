tmp_dir = '/tmp'
if ENV['OS'] =~ /Windows_NT/
	puts "This program is running under Windows NT/2000/XP!"
	tmp_dir = ENV['TMP']
elsif ENV['PATH'] =~ /\/usr/
	puts "This program has access to a UNIX-Style filesystem!"
else
	puts "Gosh dangit, didn't the Governement tell you not to run strange programs on this X-43 Mark 2?!"
	exit
end
