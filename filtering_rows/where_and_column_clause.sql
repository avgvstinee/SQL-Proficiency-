SELECT 
    name AS product_name,
	quantity * price  amount
	
FROM public.inventories
WHERE
   quantity * price > 10000;