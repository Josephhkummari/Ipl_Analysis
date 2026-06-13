CREATE OR REPLACE VIEW ipl.team_summary AS
SELECT
    winner AS team,
    COUNT(*) AS wins
FROM ipl.matches
WHERE winner IS NOT NULL
GROUP BY winner;