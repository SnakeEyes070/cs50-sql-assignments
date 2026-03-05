CREATE TABLE Users (
    "id"           INTEGER,
    "first_name"   TEXT NOT NULL,
    "Last_name"    TEXT NOT NULL,
    "Username"     TEXT NOT NULL UNIQUE,
    "Password"     TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE institute (
    "id"           INTEGER,
    "name"         TEXT NOT NULL,
    "type"         TEXT NOT NULL,
    "location"     TEXT,
    "founded_year" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE Companies (
    "id"        INTEGER,
    "name"      TEXT NOT NULL,
    "industry"  TEXT NOT NULL,
    "location"  TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE Connections (
    "id"            INTEGER,
    "Users_id"      INTEGER NOT NULL,
    "connected_id"  INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("Users_id") REFERENCES "Users"("id"),
    FOREIGN KEY ("connected_id") REFERENCES "Users"("id")
);

CREATE TABLE Connections_with_Schools (
    "id"                INTEGER,
    "Users_id"          INTEGER NOT NULL,
    "institute_id"      INTEGER NOT NULL,
    "start_affiliation" TEXT,
    "graduated"         TEXT,
    "degree"            TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("Users_id") REFERENCES "Users"("id"),
    FOREIGN KEY ("institute_id") REFERENCES "institute"("id")
);

CREATE TABLE Connections_with_Companies (
    "id"                INTEGER,
    "Users_id"          INTEGER NOT NULL,
    "Companies_id"      INTEGER NOT NULL,
    "start_affiliation" TEXT,
    "left"              TEXT,
    "role"              TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("Users_id") REFERENCES "Users"("id"),
    FOREIGN KEY ("Companies_id") REFERENCES "Companies"("id")
);
