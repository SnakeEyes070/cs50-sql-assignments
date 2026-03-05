CREATE TABLE Ingredients (
    "id"             INTEGER,
    "name"           TEXT NOT NULL,
    "unit"           TEXT,
    "per_unit_price" REAL,
    PRIMARY KEY ("id")
);

CREATE TABLE Donuts (
    "id"          INTEGER,
    "name"        TEXT NOT NULL,
    "gluten_free" TEXT NOT NULL,
    "price"       REAL,
    PRIMARY KEY ("id")
);

CREATE TABLE Donut_Ingredients (
    "donut_id"        INTEGER,
    "ingredient_id"   INTEGER,
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "Ingredients"("id")
);

CREATE TABLE Customers (
    "id"         INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name"  TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE Orders (
    "id"          INTEGER,
    "order_no"    INTEGER UNIQUE,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "Customers"("id")
);

CREATE TABLE Order_Donuts (
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER,
    FOREIGN KEY ("order_id") REFERENCES "Orders"("id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id")
);
