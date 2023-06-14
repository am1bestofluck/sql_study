#! 2 
# Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
# в зависимости от текущего времени суток. С 6:00 до 12:00 
# функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна 
# возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP  FUNCTION  IF EXISTS dz6.hello;

DELIMITER //
CREATE FUNCTION dz6.hello()
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
	
	DECLARE `outv` VARCHAR(50) DEFAULT 'Привет-здрасьте';
	return CASE 
		WHEN HOUR(curtime()) <= 5 THEN 'Доброй ночи'
        WHEN HOUR(curtime()) BETWEEN 6 AND 11 THEN 'С Добрым утром :)'
        WHEN HOUR(curtime()) BETWEEN 12 AND 17 THEN 'Добрый день' 
        else 'Доброй ночи'
	END;
    return @outv;
END //
DELIMITER ;

use dz6;
select hello();