CREATE TABLE brands (
  brand_id  GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nameVARCHAR(50)

)

INSERT INTO
  brands (name)
VALUES
  ('Apple')
RETURNING
  *;


