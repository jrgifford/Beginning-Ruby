f = File.new("text.txt", "r")
while a = f.getc
  puts a.chr
  f.seek(5, IO::SEEK_CUR)
end  