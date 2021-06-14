DROP TABLE IF EXISTS apartment;
DROP TABLE IF EXISTS prices;

CREATE TABLE apartment (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL,
  borough TEXT NOT NULL,
  neighborhood TEXT NOT NULL,
  address TEXT NOT NULL,
  dist DECIMAL NOT NULL,
  last_updated TIMESTAMP NOT NULL
);

CREATE TABLE prices (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  apartment_id INTEGER NOT NULL,
  current_date TIMESTAMP NOT NULL,
  rent DOUBLE NOT NULL,
  FOREIGN KEY (apartment_id) REFERENCES apartment (id)
);