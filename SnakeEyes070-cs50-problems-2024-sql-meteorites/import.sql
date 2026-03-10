CREATE TABLE meteorites_temp (
    name TEXT,
    id INTEGER,
    nametype TEXT,
    class TEXT,
    mass TEXT,
    discovery TEXT,
    year TEXT,
    lat TEXT,
    long TEXT
);

.mode csv
.import meteorites.csv meteorites_temp

CREATE TABLE meteorites (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    class TEXT NOT NULL,
    mass REAL,
    discovery TEXT NOT NULL,
    year INTEGER,
    lat REAL,
    long REAL
);


INSERT INTO meteorites (name, class, mass, discovery, year, lat, long)
SELECT
    name,
    class,
    ROUND(CAST(NULLIF(mass, '') AS REAL), 2),
    discovery,
    CAST(NULLIF(year, '') AS INTEGER),
    ROUND(CAST(NULLIF(lat, '') AS REAL), 2),
    ROUND(CAST(NULLIF(long, '') AS REAL), 2)
FROM meteorites_temp
WHERE nametype != 'Relict'
ORDER BY year ASC, name ASC;

DROP TABLE meteorites_temp;
