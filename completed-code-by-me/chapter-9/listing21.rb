require 'rubygems'
require 'mysql'

# Connect to a MySQL database 'test' on the local machine
# using username of 'root' with no password.
db = Mysql.connect('localhost', 'root', 'password', 'test')

# Perform an arbitrary SQL query
db.query("INSERT INTO people (name, age) VALUES('Chris', 25)")

# Perform a query that returns data
begin
  query = db.query('SELECT * FROM people')

  puts "There were #{query.num_rows} rows returned"

  query.each_hash do |h|
    puts h.inspect
  end
rescue
  puts db.errno
  puts db.error
end

# Close the connection cleanly
db.close

