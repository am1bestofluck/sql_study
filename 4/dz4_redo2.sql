use dz4;

# Определить кто больше поставил лайков (всего): мужчины или женщины.
set @ov_f = (select count(l.id) from likes l  JOIN profiles p on p.user_id = l.user_id  WHERE p.gender ='f');

set @ov_m = (select count(l.id) from likes l  JOIN profiles p on p.user_id = l.user_id  WHERE p.gender ='m');

SELECT 'Лайков от женщин ' header, @ov_f  result 
UNION
SELECT 'Лайков от мужчин', @ov_m   
UNION  
SELECT 'output', if(@ov_m > @ov_f, 'Больше лайков поставили мужчины','Больше лайков поставили женщины');