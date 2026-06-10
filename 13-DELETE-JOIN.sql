SELECT u.first_name, p.bio FROM users u
JOIN profiles as p
ON p.user_id  = u.id
WHERE u.first_name  = 'Davi';

DELETE p FROM users u
JOIN profiles AS p
ON p.user_id = u.id
WHERE u.first_name = 'Davi';