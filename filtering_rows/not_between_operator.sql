SELECT 
 name AS product_name,
 price

FROM public.inventories
WHERE
 price NOT BETWEEN 899.99 AND 999.99