SELECT 
p.productName AS 'Produto',
MIN(od.quantity) AS 'Mínima',
MAX(od.quantity) AS 'Máxima',
ROUND(AVG(od.quantity),2) AS 'Média'

FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
GROUP BY od.ProductID
HAVING AVG(od.quantity) > 20

ORDER BY AVG(od.quantity) ASC, p.productName ASC;