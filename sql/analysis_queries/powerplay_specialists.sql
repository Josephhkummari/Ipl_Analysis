/*
Question:
Which batters perform best during the powerplay overs?
*/

select batter,
sum(batsman_runs) as batsman_total_runs
from ipl.deliveries
where over between 1 and 6
group by batter
order by batsman_total_runs desc