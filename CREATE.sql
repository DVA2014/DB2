CREATE TABLE IF NOT EXISTS genre (
	genreid SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	artistid SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	genre_id INTEGER REFERENCES genre(genreid),
	artist_id INTEGER REFERENCES artist(artistid),
	CONSTRAINT pk_genre_artist PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album (
	albumid SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Track (
	trackid SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(albumid)
);

CREATE TABLE IF NOT EXISTS collection (
	collectionid SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_album (
	artist_id INTEGER REFERENCES artist(artistid),
	album_id INTEGER REFERENCES album(albumid),
	CONSTRAINT pk_artist_album PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INTEGER REFERENCES collection(collectionid),
	track_id INTEGER REFERENCES track(trackid),
	CONSTRAINT pk_collection_track PRIMARY KEY (collection_id, track_id)
);
