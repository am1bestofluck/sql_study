# Выберите все сообщения	+, 
# отсортируйте сообщения по возрастанию даты отправления (created_at) +
# и найдите разницу дат отправления между соседними сообщениями, получившегося списка. 
# (используйте LEAD или LAG)

use dz5;
SELECT
    	m.id, 
        m.created_at,
        LAG(created_at,1,0) OVER w as prev_m,
        timediff((LAG(created_at,1,0) OVER w), m.created_at) as timedelta_prev,
        '' as __separator__,
        m.created_at,
        LEAD(created_at,1,0) OVER w as next_m,
        timediff(LEAD(created_at,1,0) OVER w , m.created_at) as timedelta_next
    
    FROM messages m 
    
    WINDOW w AS (ORDER BY created_at ASC);