SELECT city, COUNT(*) AS Number_of_Sschool
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING COUNT(*) <= 3
ORDER BY Number_of_Sschool DESC, city ASC;
