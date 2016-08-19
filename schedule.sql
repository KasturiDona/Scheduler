DROP TABLE schedule;

CREATE TABLE schedule (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	event_id INTEGER,
	event_date DATETIME,
	utc_event_date DATETIME,
	duration INTEGER,
	program_id INTEGER,
	title TEXT,
	movie TEXT,
	series INTEGER,
	classification TEXT,
	warnings TEXT,
	year_production INTEGER,
	country TEXT,
	language TEXT,
	genre TEXT,
	sub_genre TEXT,
	episode_id INTEGER,
	series_number INTEGER,
	episode_number INTEGER,
	episode_title TEXT,
	director TEXT,
	main_cast TEXT,
	synopsis TEXT
);
