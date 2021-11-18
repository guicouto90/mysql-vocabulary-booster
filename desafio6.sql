SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', 
j.job_title AS 'Cargo',
h.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'

FROM hr.jobs AS j
INNER JOIN hr.job_history AS h
ON h.job_id = j.job_id 
INNER JOIN hr.employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC,j.job_title ASC;