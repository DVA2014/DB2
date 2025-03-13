INSERT INTO genre
VALUES (1, 'hip hop');

INSERT INTO genre
VALUES (2, 'pop');

INSERT INTO genre
VALUES (3, 'rock');

INSERT INTO genre
VALUES (4, 'techno');

INSERT INTO artist
VALUES (1, 'Eminem');

INSERT INTO artist
VALUES (2, 'Lana Del Ray');

INSERT INTO artist
VALUES (3, 'The Black Keys');

INSERT INTO artist
VALUES (4, 'Moby');

INSERT INTO genre_artist
VALUES (1, 1);

INSERT INTO genre_artist
VALUES (2, 2);

INSERT INTO genre_artist
VALUES (3, 3);

INSERT INTO genre_artist
VALUES (2, 4);

INSERT INTO genre_artist
VALUES (4, 4);

INSERT INTO album
VALUES (1, 'The Eminem show', 2002);

INSERT INTO album
VALUES (2, 'Norman fucking rockwell!', 2019);

INSERT INTO album
VALUES (3, 'Delta kream', 2021);

INSERT INTO album
VALUES (4, 'All visible objects', 2020);

INSERT INTO artist_album
VALUES (1, 1);

INSERT INTO artist_album
VALUES (2, 2);

INSERT INTO artist_album
VALUES (3, 3);

INSERT INTO artist_album
VALUES (4, 4);

INSERT INTO track
VALUES (1, 'White America', 325, 1);

INSERT INTO track
VALUES (2, 'Business', 252, 1);

INSERT INTO track
VALUES (3, 'Cleanin out my closet', 312, 1);

INSERT INTO track
VALUES (4, 'Norman fucking rockwell', 248, 2);

INSERT INTO track
VALUES (5, 'Mariners apartment complex', 246, 2);

INSERT INTO track
VALUES (6, 'Doin’ time', 202, 2);

INSERT INTO track
VALUES (7, 'Crawling kingsnake', 368, 3);

INSERT INTO track
VALUES (8, 'Louise', 263, 3);

INSERT INTO track
VALUES (9, 'Poor boy a long way from home', 248, 3);

INSERT INTO track
VALUES (10, 'Morningside', 330, 4);

INSERT INTO track
VALUES (11, 'My only love', 344, 4);

INSERT INTO track
VALUES (12, 'Refuge', 344, 4);

INSERT INTO collection
VALUES (1, 'Greatest rap hits', 2015);

INSERT INTO collection
VALUES (2, 'The Best of pop', 2019);

INSERT INTO collection
VALUES (3, 'Electronic music', 2020);

INSERT INTO collection
VALUES (4, 'Rock', 2021);

INSERT INTO collection_track
VALUES (1, 1);

INSERT INTO collection_track
VALUES (1, 2);

INSERT INTO collection_track
VALUES (1, 3);

INSERT INTO collection_track
VALUES (2, 4);

INSERT INTO collection_track
VALUES (2, 5);

INSERT INTO collection_track
VALUES (2, 11);

INSERT INTO collection_track
VALUES (2, 12);

INSERT INTO collection_track
VALUES (3, 10);

INSERT INTO collection_track
VALUES (3, 11);

INSERT INTO collection_track
VALUES (3, 12);

INSERT INTO collection_track
VALUES (4, 7);

INSERT INTO collection_track
VALUES (4, 8);

INSERT INTO collection_track
VALUES (4, 9);