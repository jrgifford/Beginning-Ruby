require 'dbi'

# Connect to a database
db = DBI.connect('DBI:Mysql:db_name', 'username', 'password')

# Perform raw SQL statements with 'do', supports interpolation
db.do("INSERT INTO people (name, age) VALUSE (?, ?)" name, age)

# Construct and execute a query that will return data in
# the traditional way.
query = db.prepare('SELECT * FROM people')
query.execute

while row = query.fetch do
  puts row.inspect
end

query.finish

# Pull data direct from the database in a single sweep
# This technique is cleaner than the previous
db.select_all('SELECT * FROM people') do |row|
  puts row.inspect
end

db.disconnect