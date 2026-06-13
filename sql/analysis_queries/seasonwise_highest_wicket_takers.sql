/*
Question:
Who took the most wickets in each IPL season?
*/

with ranked_bowlers as (
select 
	m.season,d.bowler,sum(d.is_wicket) as total_wickets,
	rank() over (partition by m.season order by sum(d.is_wicket) desc) as Highest_Wicket_Taker
	from
	ipl.deliveries d 
	join ipl.matches m
	on d.match_id = m.id
	group by d.bowler,m.season
)

select *
from ranked_bowlers
where Highest_Wicket_Taker =1 
order by season;
