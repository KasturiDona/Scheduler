require 'crack' # to read xml data
require_relative './db'

def escape( input_data )
	if input_data
		input_data = input_data.gsub("'", "''") # escape single quotes in sqlite3
	end
	input_data
end

# reading xml data and inserting it into a database

f=File.open('schedule.xml')
parsed_xml = Crack::XML.parse(f)
data = parsed_xml['table']['row']

data.each do |data_xml|
	event_id = data_xml['event_id']
	event_date = data_xml['event_date']
	utc_event_date = data_xml['utc_event_date']
	duration = data_xml['duration']
	program_id = data_xml['program_id']
	title = escape(data_xml['title'])
	movie = data_xml['movie']
	series = data_xml['series']
	classification = data_xml['classification']
	warnings = data_xml['warnings']
	year_production = data_xml['year_production']
	country = data_xml['country']
	language = data_xml['language']
	genre = data_xml['genre']
	sub_genre = data_xml['sub_genre']
	episode_id = data_xml['episode_id']
	series_number = data_xml['series_number']
	episode_number = data_xml['episode_number']
	episode_title = escape(data_xml['episode_title'])
	director = data_xml['director']
	main_cast = data_xml['main_cast']
	synopsis = escape(data_xml['synopsis'])

  query = "INSERT INTO schedule (event_id, event_date, utc_event_date, duration, program_id, title, movie, series, classification, warnings, year_production, country, language, genre, sub_genre, episode_id, series_number, episode_number, episode_title, director, main_cast, synopsis) VALUES ('#{event_id}', '#{event_date}','#{utc_event_date}', '#{duration}', '#{program_id}', '#{title}', '#{movie}', '#{series}', '#{classification}', '#{warnings}', '#{year_production}', '#{country}', '#{language}', '#{genre}', '#{sub_genre}', '#{episode_id}', '#{series_number}', '#{episode_number}', '#{episode_title}', '#{director}', '#{main_cast}', '#{synopsis}' )\n"
	# print query
	query_db query
end

f.close
