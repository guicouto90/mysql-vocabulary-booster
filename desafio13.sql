SELECT 
  p.productname AS 'Produto',
  p.price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.productID = od.productID AND od.quantity > 80
ORDER BY p.productname ASC;