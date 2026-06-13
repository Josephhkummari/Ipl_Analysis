CREATE OR REPLACE VIEW death_over_summary AS
SELECT
    bowler,
    SUM(total_runs) AS runs_conceded,
    COUNT(*) AS balls,
    ROUND(
        SUM(total_runs) * 6.0 / COUNT(*),
        2
    ) AS economy
FROM ipl.deliveries
WHERE over BETWEEN 16 AND 20
GROUP BY bowler
HAVING COUNT(*) >= 300
ORDER BY economy;