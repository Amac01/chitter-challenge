require 'sinatra/base'
require './lib/peeps.rb'
require 'pg'



def setup_database
  p "Setting up test database..."
  tables = ["users", "peeps"]
  connection = PG.connect :dbname => 'chitter_test'
  tables.each do |table|
    connection.exec("TRUNCATE #{table};")
  end
end

def add_peeps
  connection = PG.connect dbname: 'chitter_test'
  # connection.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers')"
  # connection.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google')"
  # connection.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'DAS')"
end
