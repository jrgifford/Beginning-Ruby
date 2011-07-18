#!/usr/bin/ruby

require 'cgi'
require 'cgi/session'
require 'cgi/session/pstore'

cgi = CGI.new
session = CGI::Session.new(cgi,
                           :session_key => 'count_app',
                           :database_manager => CGI::Session::PStore,
                           :prefix => 'session_id'
                           )

if session['count'] && session['count'].to_i > 0
  session['count'] = (session['count'].to_i + 1).to_s
else
  session['count'] = 1
end

cgi.out do
  "<html><body>You have loaded this page #{session['count']} times</body></html>"
end

session.close
