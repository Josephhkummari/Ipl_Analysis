CREATE OR REPLACE VIEW dot_ball_summary AS
WITH bowler_stats AS (
    SELECT
        bowler,
        SUM(
            CASE
                WHEN total_runs = 0 THEN 1
                ELSE 0
            END
        ) AS dot_balls,
        COUNT(*) AS total_balls
    FROM ipl.deliveries
    GROUP BY bowler
)

SELECT
    bowler,
    dot_balls,
    total_balls,
    ROUND(
        dot_balls * 100.0 / total_balls,
        2
    ) AS dot_ball_percentage
FROM bowler_stats
WHERE total_balls >= 500
ORDER BY dot_ball_percentage DESC;