/*
Question:
Which bowlers have taken the most wickets in IPL history?
*/

select bowler,count(is_wicket) as Total_no_of_wickets
from ipl.deliveries
where is_wicket = 1
group by bowler
order by Total_no_of_wickets desc