/*
Question:
Which batters score the highest percentage of their runs through boundaries?
*/

SELECT
    batter,
    SUM(
        CASE
            WHEN batsman_runs IN (4,6)
            THEN batsman_runs
            ELSE 0
        END
    ) AS boundary_runs,
    SUM(batsman_runs) AS total_runs,
    ROUND(
        SUM(
            CASE
                WHEN batsman_runs IN (4,6)
                THEN batsman_runs
                ELSE 0
            END
        ) * 100.0
        / SUM(batsman_runs),
        2
    ) AS boundary_percentage
FROM ipl.deliveries
GROUP BY batter
HAVING SUM(batsman_runs) > 1000
ORDER BY boundary_percentage DESC;

