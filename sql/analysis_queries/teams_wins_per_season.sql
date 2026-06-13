/*
Question:
How many matches did each team win in every IPL season?
*/

select winner as team,season,count(winner) as wins
from ipl.matches
where winner is not null
group by winner,season
order by team,season
