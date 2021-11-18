SELECT 
CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) AS 'Nome completo',
h.start_date AS 'Data de início',
e.salary AS 'Salário'

FROM hr.employees AS e
INNER JOIN hr.job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN (1,2,3)
ORDER BY CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) ASC, h.start_date ASC;