SELECT 
  CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
  DATE_FORMAT(jb.start_date, '%d/%m/%Y') AS 'Data de início',
  DATE_FORMAT(jb.end_date, '%d/%m/%Y') AS 'Data de rescisão',
  ROUND(DATEDIFF(jb.end_date, jb.start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jb
ON e.employee_id = jb.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC, ROUND(DATEDIFF(jb.end_date, jb.start_date) / 365, 2) ASC;
