require 'sqlite3'

def query_db( sql )
	db = SQLite3::Database.new 'test_schedule.db'
	db.results_as_hash = true
	data = db.execute sql #runs the sql code
	# puts sql
	db.close
	data #return what is retrieved
end
