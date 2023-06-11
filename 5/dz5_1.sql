#  Создайте представление, в которое попадет информация о пользователях (имя, фамилия, город и пол), которые не старше 20 лет.
USE dz5;

CREATE OR REPLACE VIEW v_youth AS
	SELECT 
		id, 
        CONCAT(firstname,' ',lastname) AS fname, 
        p.gender, 
        p.hometown  
	FROM 
		users u JOIN profiles_ p 
    ON 
		u.id=p.user_id 
    WHERE 
		year(curdate())-year(p.birthday) <=20; 

select * from v_youth;
