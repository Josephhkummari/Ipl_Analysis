/*
Question:
Which batters have the highest strike rates among players who faced at least 500 balls?
*/

SELECT
    batter,
    COUNT(*) AS balls_faced,
    SUM(batsman_runs) AS runs_scored,

    ROUND(
        SUM(batsman_runs) * 100.0 / COUNT(*),
        2
    ) AS strike_rate

FROM ipl.deliveries
GROUP BY batter
HAVING COUNT(*) >= 500
ORDER BY strike_rate DESC;
