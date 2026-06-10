UPDATE users SET salary = ROUND(RAND() * 10000, 2);

SELECT salary FROM users 
WHERE salary BETWEEN 2000 AND 8000
ORDER BY  salary DESC;