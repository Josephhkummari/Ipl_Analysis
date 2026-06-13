/*
Question:
Which teams have the highest win percentage in IPL history?
*/

with all_teams as (
select team1 as team,winner 
from ipl.matches
union all
select team2 as team,winner 
from ipl.matches
)

select team,
count(*) as total_matches_played,
count(case when winner = team then 1 end) as total_match_wins,
round(count(case when winner = team then 1 end)*100.0/count(*),2) as win_percentage
from all_teams
group by team
order by win_percentage desc