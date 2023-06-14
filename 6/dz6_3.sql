#! 3 
# (по желанию)* Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
# communities и messages в таблицу logs 
# помещается время и дата создания записи+, название таблицы+, идентификатор первичного ключа+.
USE dz6;
DROP TABLE IF EXISTS logs_;
CREATE TABLE `logs_`(
	id  BIGINT UNSIGNED AUTO_INCREMENT , 
    logs_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    tableName VARCHAR(100), entryKey BIGINT,
    PRIMARY KEY(id))
    ENGINE = ARCHIVE;

    
DELIMITER //
DROP TRIGGER IF EXISTS log_users;
DROP TRIGGER IF EXISTS log_communities;
DROP TRIGGER IF EXISTS log_messages;

CREATE TRIGGER log_users
AFTER INSERT
ON users FOR EACH ROW
BEGIN
	# Да, Я помню что это опасный путь. Нет, Я не догадываюсь как сделать мудрее =\
	INSERT INTO dz6.logs_ (dz6.logs_.tableName, dz6.logs_.entryKey) VALUES ('users',  last_insert_id());
END //
CREATE TRIGGER log_communities 
AFTER INSERT
ON communities FOR EACH ROW
BEGIN
	INSERT INTO dz6.logs_ (dz6.logs_.tableName, dz6.logs_.entryKey) VALUES ('communities',  LAST_INSERT_ID());
END //

CREATE TRIGGER log_messages 
AFTER INSERT
ON messages FOR EACH ROW
BEGIN
	INSERT INTO logs_ (dz6.logs_.tableName, dz6.logs_.entryKey) VALUES ('messages', LAST_INSERT_ID());
END //
*/
DELIMITER ;*/