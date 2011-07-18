#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

cgi.out do
  "<html><body>This is a test</body></html>"
end
