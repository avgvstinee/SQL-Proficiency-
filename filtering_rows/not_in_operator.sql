SELECT
  name,
  price
FROM
  inventories
WHERE
  name NOT IN ('iPhone 14 Pro', 'Pixel 7 Pro');