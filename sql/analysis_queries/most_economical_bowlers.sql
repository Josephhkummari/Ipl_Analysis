/*
Question:
Which bowlers have the best economy rates among bowlers with at least 50 overs bowled?
*/

select bowler,
round(sum(total_runs)*6.0/count(*),2) as economy
from ipl.deliveries
group by bowler
having count(*)>=300
order by economy;