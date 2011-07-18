class OurClass
  def some_method
    "Some test text"
  end
end

require 'xmlrpc/server'

server = XMLRPC::Server.new(1234)
server.add_handler(XMLRPC::iPIMethods('sample'), OurClass.new) 

trap("INT") { server.shutdown }
server.serve

