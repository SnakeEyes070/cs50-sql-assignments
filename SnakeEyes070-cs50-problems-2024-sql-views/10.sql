SELECT english_title, brightness AS "Hokusai Brightness"
FROM views
WHERE artist = 'Hokusai'
ORDER BY brightness DESC;
