/*
Question:
How have cumulative team wins grown across IPL seasons?
*/
with wins_per_season as (
select winner as team,season,count(winner) as wins
from ipl.matches
group by winner,season
)

select team,season,
sum(wins) over (partition by team order by season rows unbounded preceding) as running_total_wins
from wins_per_season
order by team;