
-- create a primary key
CREATE TABLE brands (
  brand_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(50)

);

INSERT INTO
  brands (name)
VALUES
  ('Apple')
RETURNING
  *;


INSERT INTO
  brands (name)
VALUES
  ('Samsung')
RETURNING
  *;


--A primary key may consist of two or more columns

CREATE TABLE product_tags (
  product_id INT,
  tag_id INT,
  PRIMARY KEY (product_id, tag_id)
);

CREATE TABLE repo (
  url VARCHAR(255),
  commit_hash VARCHAR(255),
  PRIMARY KEY (url, commit_hash)
);

INSERT INTO
  repo (url, commit_hash)
VALUES
  ('https://github.com/avgvstinee/SQL-essentials.git', 'commit_hash_1')
RETURNING
  *;