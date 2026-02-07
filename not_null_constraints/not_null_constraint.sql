--Drop a table if it exists
DROP TABLE IF EXISTS warehouses;

--create a table with not null constraints
CREATE TABLE warehouses (
  warehouse_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL
);

--insert values with null , you will get an error
INSERT INTO
  warehouses (name, address)
VALUES
  ('San Meto', NULL)
RETURNING
  name,
  address;

--insert values with non null
INSERT INTO
  warehouses (name, address)
VALUES
  (
    'San Meto',
    ' 1st Ave Suite K03, San Mateo, CA 94403'
  )
RETURNING
  name,
  address;