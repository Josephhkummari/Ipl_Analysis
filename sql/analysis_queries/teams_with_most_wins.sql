
/*
Question:
Which IPL teams have won the most matches?
*/

select winner as team,count(winner) as wins
from ipl.matches
where winner is not null
group by winner
order by wins desc