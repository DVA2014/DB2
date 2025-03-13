SELECT name, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

SELECT name, duration
FROM track
WHERE duration >= 210;

SELECT name,  release_year
FROM collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artist
WHERE name NOT LIKE '% %';

SELECT name
FROM track
WHERE name LIKE '%my%' OR name LIKE '%My%';

SELECT g.name, COUNT(artist_id)
FROM genre AS g
LEFT JOIN genre_artist AS ga ON g.genreid = ga.genre_id
GROUP BY g.genreid;

SELECT a.name, AVG(t.duration)
FROM album AS a
JOIN track AS t ON a.albumid = t.album_id
GROUP BY a.albumid;

SELECT ar.name
FROM artist AS ar
LEFT JOIN artist_album AS aa ON ar.artistid = aa.artist_id
LEFT JOIN album AS al ON aa.album_id = al.albumid AND al.release_year = 2020
WHERE al.albumid IS NULL;

SELECT DISTINCT c.name
FROM collection AS c
JOIN collection_track AS ct ON c.collectionid  = ct.collection_id
JOIN track AS t ON ct.track_id = t.trackid
JOIN album AS al ON t.album_id = al.albumid
JOIN artist_album AS aa ON al.albumid = aa.album_id
JOIN artist AS a ON aa.artist_id = a.artistid
WHERE a.name = 'Moby';