INSERT INTO profiles (bio, description, user_id)
SELECT 
	CONCAT('Bio do ', first_name),
	CONCAT('Description do ', first_name),
	id
FROM users;

SELECT * FROM profiles as p;