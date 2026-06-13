/*
Bowlers having Most Wickets in death overs
*/


select bowler,
sum(case when is_wicket=1 then 1
else 0
end) as total_wickets
from ipl.deliveries
where over between 16 and 20
group by bowler
order by total_wickets desc