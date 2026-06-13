/*
Question:
Who are the highest run scorers in IPL history?
*/
SELECT batter,sum(batsman_runs) as top_scorer FROM ipl.deliveries
group by batter 
order by sum(batsman_runs) desc
limit 10