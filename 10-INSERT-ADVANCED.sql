SELECT id, (SELECT id FROM roles 
ORDER BY rand() limit 1) as any_table FROM users;

INSERT INTO users_roles (user_id, role_id)
SELECT id, (SELECT id FROM roles 
ORDER BY rand() limit 1) as any_table FROM users;

INSERT IGNORE INTO users_roles (user_id, role_id)
SELECT id, (SELECT id FROM roles 
ORDER BY rand() limit 1) as any_table FROM users ORDER BY rand() limit 5;