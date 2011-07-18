require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://127.0.0.1:1234/")
puts server.call("sample.vowel_count", "This is a test").inspect

