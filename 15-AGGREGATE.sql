SELECT MAX(salary) as max_salary
FROM users as u;

SELECT MIN(salary) as min_salary
FROM users as u;

SELECT ROUND(AVG(salary)) as avg_salary
FROM users as u;

SELECT SUM(salary) as sum_salary
FROM users as u;

SELECT COUNT(salary) as count_salary
FROM users as u;


SELECT first_name,
MAX(salary) as max_salary,
MIN(salary) as min_salary,
AVG(salary) as avg_salary,
SUM(salary) as sum_salary,
COUNT(salary) as count_salary,
COUNT(u.id) as total
FROM users as u
JOIN profiles as p
ON p.user_id = u.id 
WHERE u.id in (1, 30)
GROUP BY first_name;