require 'rubygems'
require 'RedCloth'
r = RedCloth.new("This is a *test* of _using RedCloth_")
puts r.to_html
