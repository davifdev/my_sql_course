SELECT * FROM users as u;
WHERE created_at = '2026-06-04 11:10:56';

SELECT * FROM users as u
WHERE created_at > '2026-06-04 11:10:56' AND first_name = 'Larissa';

SELECT * FROM users as u
WHERE created_at > '2026-06-04 11:10:56' OR first_name = 'Davi';

