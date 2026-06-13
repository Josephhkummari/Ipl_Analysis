/*
Question:
Which batters have hit the most sixes in IPL history?
*/
select batter,count(batsman_runs) as Total_no_of_Fours
from ipl.deliveries
where batsman_runs = 4
group by batter
order by Total_no_of_Fours desc
limit 10;
