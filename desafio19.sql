USE HR;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT
    COUNT(hire_date) 
  FROM hr.employees 
  WHERE MONTH(hire_date) = 6 AND YEAR(hire_date) = 1987
  INTO total;
  
  RETURN total;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;