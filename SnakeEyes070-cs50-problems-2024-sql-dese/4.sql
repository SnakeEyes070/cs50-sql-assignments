SELECT city, COUNT(*) AS "Number_of_Sschool"
FROM schools
WHERE type = 'Public School'
GROUP BY city
ORDER BY Number_of_Sschool DESC , city ASC LIMIT 10 ;
