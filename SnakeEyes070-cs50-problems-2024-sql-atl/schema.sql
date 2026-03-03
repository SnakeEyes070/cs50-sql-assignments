CREATE TABLE passengers (
    id          INTEGER,
    first_name  TEXT NOT NULL,
    last_name   TEXT NOT NULL,
    age         INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE airlines (
    id             INTEGER ,
    name           TEXT NOT NULL,
    concourse      TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE flights (
    id                INTEGER,
    flight_number     INTEGER,
    airline_id        INTEGER,
    departure_airport TEXT,
    arrival_airport   TEXT,
    departure_time    TEXT,
    arrival_time      TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("airline_id") REFERENCES airlines("id")
);

CREATE TABLE checkins (
    id             INTEGER,
    passenger_id   INTEGER,
    flight_id      INTEGER,
    checkin_time   TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("passenger_id") REFERENCES passengers("id"),
    FOREIGN KEY ("flight_id") REFERENCES flights("id")
);
