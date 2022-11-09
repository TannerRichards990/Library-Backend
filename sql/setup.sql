-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`

DROP TABLE IF EXISTS books;

DROP TABLE IF EXISTS authors;

CREATE TABLE books (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR,
  dob BIGINT,
  pob VARCHAR
);

CREATE TABLE authors (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR,
  dob BIGINT,
  pob VARCHAR
);

INSERT INTO
  books (title, released)

  VALUES
  ('The Hobbit', 1937),
  ('A Dance with Dragons', 2011),
  ('Harry Potter and the Philosphers Stone', 1997),
  ('Mody Dick', 1851);

  INSERT INTO
  authors (name, dob, pob)

  VALUES 
  ('J.R.R. Tolkien', 1892, 'Bloemfontein'),
  ('George R.R. Martin', 1948, 'Bayonne'),
  ('J.K. Rowling', 1965, 'Yate'),
  ('Herman Melville', 1819, 'New York');
