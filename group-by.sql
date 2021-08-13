-- 1
SELECT COUNT(track_id), g.name
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
GROUP BY g.name

-- 2
SELECT COUNT(*), g.name
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Rock' OR g.name = 'Pop'
GROUP BY g.name

-- 3
SELECT COUNT(al.album_id), ar.name
FROM artist ar
JOIN album al
ON ar.artist_id = al.artist_id
GROUP BY ar.name