CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archive_users`( IN i_uid BIGINT, OUT sp_archive_users_status VARCHAR(100))
main: BEGIN

	DECLARE `_rollback` BIT DEFAULT b'0';
	DECLARE `sp_archive_users_status` VARCHAR(100) DEFAULT 'unhandled';
    DECLARE `tmp_firstname` VARCHAR(100);
    DECLARE `tmp_lastname` VARCHAR(100);
    DECLARE `tmp_email` VARCHAR(100);
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	BEGIN
		SET `_rollback` = b'1';
	END;

	START TRANSACTION;
    
    # валидация ввода
	IF NOT EXISTS(SELECT * FROM users WHERE id = i_uid) THEN
		ROLLBACK;
		SET @sp_archive_users_status = 'incorrent index';
        SELECT @sp_archive_users_status AS output;
        LEAVE main;
	END IF;
    
    # объявляем буфер
    SELECT @tmp_firstname := firstname FROM users WHERE id = i_uid;
    SELECT @tmp_lastname := lastname FROM users WHERE id = i_uid;
    SELECT @tmp_email := email FROM users WHERE id = i_uid;
    
    # заполняем архив
    INSERT INTO users_old(firstname, lastname, email) VALUES
		(@tmp_firstname, @tmp_lastname, @tmp_email);
    
    # чистим ежедневник
    DELETE FROM users WHERE id = i_uid;
	
    # закругляемся
	IF `_rollback` THEN
		ROLLBACK;
		SET @sp_archive_users_status = 'rollback\'ed';
	ELSE
		COMMIT;
		SET @sp_archive_users_status = 'commit\'ed';
	END IF;
	
    SELECT @sp_archive_users_status AS output;
END