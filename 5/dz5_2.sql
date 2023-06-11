# Найдите кол-во, отправленных сообщений каждым пользователем +
# и выведите ранжированный список пользователь, +
#указав указать имя и фамилию пользователя,  +
# количество отправленных сообщений +
# и место в рейтинге (первое место у пользователя с максимальным количеством сообщений) . +
# (используйте DENSE_RANK) +

use dz5;

-- SELECT from_user_id, count(*) FROM messages m GROUP BY from_user_id order by from_user_id ASC; -- 567?


SELECT 
		u.id,
		CONCAT(u.firstname, " ", u.lastname)  as fullname,
		count(m.id) as msg_total,
        DENSE_RANK()  OVER(ORDER BY count(m.id) DESC) AS 'Can\'t enjoy their fun. Have to compare it and have more. Some are just not meant for happiness, it seems.'
	FROM users u LEFT JOIN messages m 
	ON u.id =m.from_user_id 
	GROUP BY u.id;