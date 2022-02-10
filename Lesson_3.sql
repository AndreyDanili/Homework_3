CREATE TABLE IF NOT EXISTS genre (
	id serial PRIMARY KEY,
	name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	id serial PRIMARY KEY,
	name varchar(40) unique NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_genre (
	id serial PRIMARY KEY,
	singer_id integer NOT NULL REFERENCES singer(id),
	genre_id integer NOT NULL REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS album (
	id serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_album (
	id serial PRIMARY KEY,
	singer_id integer NOT NULL REFERENCES singer(id),
	album_id integer NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS track (
	id serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	duration time NOT NULL,
	album_id integer NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	release integer not null
);

CREATE TABLE IF NOT EXISTS track_collection (
	id serial PRIMARY KEY,
	track_id integer NOT NULL REFERENCES track(id),
	collection_id integer NOT NULL REFERENCES collection(id)
);
