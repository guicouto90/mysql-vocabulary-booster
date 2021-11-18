USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email varchar(45))
BEGIN
  SELECT
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    d.department_name AS 'Departamento',
    j.job_title AS 'Cargo'
  FROM hr.job_history AS h
  INNER JOIN hr.employees AS e
  ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
  INNER JOIN hr.jobs AS j
  ON j.JOB_ID = h.JOB_ID
  INNER JOIN hr.departments AS d
  ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
  WHERE e.email = email
  ORDER BY j.job_title;
END $$

DELIMITER ;

call exibir_historico_completo_por_funcionario('NKOCHHAR');