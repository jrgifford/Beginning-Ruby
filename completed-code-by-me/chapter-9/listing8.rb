f = File.new("text.txt", "r+")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close