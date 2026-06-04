ALTER TABLE users 
ADD COLUMN created_at TIMESTAMP DEFAULT NOW();

INSERT INTO users (first_name, last_name, email, password_hash)
VALUES ('Robert', 'Souza', 'robert@gmail.com', '54876982');