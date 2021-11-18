USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(45))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_de_empregos INT;
  SELECT
    COUNT(jh.employee_id) AS total_empregos
  FROM hr.job_history AS jh
  INNER JOIN hr.employees AS e
  ON e.email = email AND jh.employee_id = e.employee_id
  INTO total_de_empregos;
  
  RETURN total_de_empregos;

END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;
  