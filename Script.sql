CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_artist (
	Genre_id INTEGER REFERENCES Genre(id),
	Artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk_genre_artist PRIMARY KEY (Genre_id, Artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	Release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	Duration INTEGER NOT NULL,
	Album_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	Release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist_albums (
	Artist_id INTEGER REFERENCES Artist(id),
	Albums_id INTEGER REFERENCES Albums(id),
	CONSTRAINT pk_artist_albums PRIMARY KEY (Artist_id, Albums_id)
);

CREATE TABLE IF NOT EXISTS Collections_tracks (
	Collection_id INTEGER REFERENCES Collections(id),
	Track_id INTEGER REFERENCES Tracks(id),
	CONSTRAINT pk_collection_track PRIMARY KEY (Collection_id, Track_id)
);

