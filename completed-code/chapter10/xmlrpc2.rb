require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://xmlrpc-c.sourceforge.net/api/sample.php")
ok, results = server.call2("sample.sumAndDifference", 5, 3)

if ok
  puts results.inspect
else
  puts results.faultCode
  puts results.faultString
end

