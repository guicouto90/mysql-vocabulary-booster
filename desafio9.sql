SELECT 
CONCAT(e.firstname, ' ', e.lastname) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'

FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.employeeID = o.EmployeeID
GROUP BY o.EmployeeID

ORDER BY COUNT(o.EmployeeID) ASC;