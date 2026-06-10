SELECT
u.id as uid, u.first_name, r.name,
p.bio, p.description 
FROM users as u
LEFT JOIN profiles as p ON u.id = p.user_id
INNER JOIN users_roles as ur ON u.id = ur.user_id 
INNER JOIN roles as r ON ur.role_id = r.id
ORDER BY uid ASC
;