CREATE OR REPLACE VIEW batting_summary AS
SELECT
    batter,
    COUNT(*) AS balls_faced,
    SUM(batsman_runs) AS total_runs,
    ROUND(
        SUM(batsman_runs) * 100.0 / COUNT(*),
        2
    ) AS strike_rate
FROM ipl.deliveries
GROUP BY batter;