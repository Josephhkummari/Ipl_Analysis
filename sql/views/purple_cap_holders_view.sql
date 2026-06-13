CREATE OR REPLACE VIEW ipl.purple_cap_holders AS
WITH season_wickets AS (
    SELECT
        m.season,
        d.bowler,
        SUM(
            CASE
                WHEN d.dismissal_kind IN (
                    'bowled',
                    'caught',
                    'lbw',
                    'stumped',
                    'hit wicket',
                    'caught and bowled'
                )
                THEN 1
                ELSE 0
            END
        ) AS wickets
    FROM ipl.deliveries d
    JOIN ipl.matches m
        ON d.match_id = m.id
    GROUP BY m.season, d.bowler
)
,ranked_bowlers as (
select *,rank() over (partition by season order by wickets desc) as wicket_rank
from season_wickets
)

SELECT season,bowler,wickets
FROM ranked_bowlers
where wicket_rank=1
order by season ;