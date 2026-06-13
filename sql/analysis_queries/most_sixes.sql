/*
Question:
Which batters have hit the most sixes in IPL history?
*/

select batter,count(batsman_runs) as Total_no_of_Sixes
from ipl.deliveries
where batsman_runs = 6
group by batter
order by Total_no_of_Sixes desc
limit 10;
