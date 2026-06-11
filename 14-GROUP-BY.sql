SELECT * FROM users as u;

SELECT SUM(salary) FROM users as u;

SELECT first_name, SUM(salary) as total_salary
FROM users
GROUP BY first_name;

SELECT last_name, COUNT(*) as total_last_name
FROM users as u
GROUP BY last_name;

SELECT first_name, last_name, COUNT(*) as total_names
FROM users as u
GROUP BY first_name, last_name;

SELECT p.description, SUM(u.salary) as total
FROM users as u
INNER JOIN profiles as p
ON p.user_id  = u.id
GROUP BY p.description
HAVING SUM(salary) > 3000;

SELECT r.name, COUNT(*) AS total_users
FROM users as u
INNER JOIN users_roles as ur
ON u.id = ur.user_id 
INNER JOIN roles as r
ON ur.role_id = r.id 
GROUP BY r.name;