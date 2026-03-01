SELECT teams.name, SUM(performances.H) AS "total hits"
FROM teams
JOIN performances ON teams.id = performances.team_id
WHERE performances.year = 2001
GROUP BY Teams.name
ORDER BY "total hits" DESC
LIMIT 5;
