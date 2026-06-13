CREATE OR REPLACE VIEW ipl.batting_summary_season AS
SELECT
    m.season,
    d.batter,
    SUM(d.batsman_runs) AS runs
FROM ipl.deliveries d
JOIN ipl.matches m
ON d.match_id = m.id
GROUP BY m.season, d.batter;