require 'uri'
u = URI::HTTP.build( :host => 'rubyinside.com', :path => '/' )
puts u.to_s
puts u.request_uri

ftp_url = URI::FTP.build( :userinfo => 'username:password',
:host => 'ftp.example.com',
:path => '/pub/folder',
:typecode => 'a')

puts ftp_url.to_s
