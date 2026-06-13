/*
Question:
Which batting partnerships produced the highest run totals in a single match?
*/

with partnerships as
(
select match_id,
least(batter,non_striker) as Batter_1,
greatest(batter,non_striker) as Batter_2,
sum(total_runs) as partnership_runs
from ipl.deliveries
group by match_id,
least(batter,non_striker),
greatest(batter,non_striker)
)

select * 
from partnerships
order by partnership_runs desc
limit 10;