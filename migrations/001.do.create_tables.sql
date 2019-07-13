CREATE TABLE users(id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY, first_name VARCHAR NOT NULL, last_name VARCHAR NOT NULL, username VARCHAR NOT NULL, password TEXT NOT NULL, email VARCHAR);

CREATE TABLE reviews(id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY, tagline TEXT NOT NULL, band_name VARCHAR NOT NULL, venue TEXT NOT NULL, user_id INTEGER REFERENCES users(id) ON DELETE CASCADE, show_date DATE, posted TIMESTAMP, content TEXT, rating smallint);

CREATE TABLE user_credentials(id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY, username VARCHAR NOT NULL, user_password TEXT NOT NULL );