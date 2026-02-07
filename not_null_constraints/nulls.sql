
--comparing NULL with a number will result in NULL
SELECT
  NULL = 1 AS results

--Inserting NULL into a column 
CREATE TABLE warehouses (
  warehouse_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255)
);

INSERT INTO
  warehouses (name, address)
VALUES
  ('San Jose', NULL)
RETURNING
  name,
  address;

INSERT INTO
  warehouses (name)
VALUES
  ('San Francisco')
RETURNING
  name,
  address;


SELECT * FROM public.warehouses	