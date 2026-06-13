/*
Question:
Who scored the most runs in each IPL season?
*/

with ranked_batters as (
select 
	m.season,
	d.batter,
	sum(d.batsman_runs) as total_runs,
	rank() over (partition by m.season order by sum(d.batsman_runs) desc) as Top_Run_Scorer
	from ipl.deliveries as d
	join ipl.matches as m
	on m.id = d.match_id
	group by d.batter,m.season
)

select * 
from ranked_batters
where Top_Run_Scorer=1
order by season;