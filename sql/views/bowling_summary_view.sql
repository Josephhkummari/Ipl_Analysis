CREATE OR REPLACE VIEW ipl.bowling_summary AS
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
    ) AS wickets,

    ROUND(
        SUM(d.total_runs) * 1.0 /
        COUNT(DISTINCT (d.match_id, d.over)),
        2
    ) AS economy,

    ROUND(COUNT(*) / 6.0, 2) AS overs_bowled

FROM ipl.deliveries d
JOIN ipl.matches m
    ON d.match_id = m.id

GROUP BY
    m.season,
    d.bowler

HAVING ROUND(COUNT(*) / 6.0, 2) > 50;

DROP VIEW ipl.bowling_summary;



