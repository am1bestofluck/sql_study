use dz4;
# Вывести всех пользователей, которые не отправляли сообщения.

select p.user_id from profiles p 
left join messages m on p.user_id = m.from_user_id
where m.from_user_id is null;