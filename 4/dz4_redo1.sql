use dz4;
/*

пошагово
select * from profiles  where birthday= '2014-07-31';
select * from media where user_id = 7;
select * from likes where media_id = 7;
*/

# чтобы легче работалось поправляем лайки так чтобы хотя бы один подходил
UPDATE `dz4`.`likes` SET `media_id` = '7' WHERE (`id` = '20');
UPDATE `dz4`.`likes` SET `media_id` = '7' WHERE (`id` = '19');

# знаете, когда в первый раз получил пустой результат - подумал "так быть не может, я что-то не так делаю ._. "
# тут пляшем от профилей
/*
select count(*) `out` from profiles p 
join media m on p.user_id= m.user_id 
join likes l on l.media_id = m.id
where year(curdate()) - year(p.birthday) < 12  ;
*/
# а этот - в зачёт
select count(*) `зачёт 1` from likes l
join media m on m.id = l.media_id
join profiles p on p.user_id = m.user_id
where year(curdate()) - year(p.birthday) < 12;

# исправляем обратно, на всякий случай
UPDATE `dz4`.`likes` SET `media_id` = '20' WHERE (`id` = '20');
UPDATE `dz4`.`likes` SET `media_id` = '19' WHERE (`id` = '19')