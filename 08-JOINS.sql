SELECT u.id as uid, p.id as pid
FROM users as u, profiles as p
WHERE u.id = p.user_id;

SELECT u.id as uid, p.id as pid 
FROM users u 
INNER JOIN profiles p
	ON u.id = p.user_id
ORDER BY uid, pid ASC;

SELECT u.id as uid, p.id as pid 
FROM users u 
LEFT JOIN profiles p
	ON u.id = p.user_id 
ORDER BY uid, pid ASC;


SELECT u.id as uid, p.id as pid
FROM users u
RIGHT JOIN profiles p
 ON u.id = p.user_id
ORDER BY uid, pid ASC;

DELETE FROM users WHERE id BETWEEN 50 AND 99;
