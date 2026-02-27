SELECT first_name, last_name, height AS "Height in Inches" FROM players
WHERE birth_country = 'USA'
ORDER BY height DESC;
