#! 1 
# Создайте таблицу users_old, аналогичную таблице users. 
# Создайте процедуру, с помощью которой можно переместить любого (одного) пользователя из таблицы users 
# в таблицу users_old. (использование транзакции с выбором commit или rollback – обязательно).


SELECT dz6;
SET @buffer = '';
SET autocommit=0;
CALL sp_archive_users(10, @buffer); # \sql\6\dz6_1_procedure.sql


# проверка
# SELECT * FROM users;
# SELECT * FROM users_old;

/* упс... вайл не работает вне ф/п?
SET @counter = 10;
WHILE @counter >0 DO
	BEGIN
    
    SET @counter = @counter -1;
    END;
END WHILE;
*/