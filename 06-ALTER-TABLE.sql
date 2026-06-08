SHOW CREATE TABLE profiles;

ALTER TABLE profiles
DROP FOREIGN KEY profiles_users_FK;

ALTER TABLE profiles 
ADD CONSTRAINT profiles_users_FK
FOREIGN KEY (user_id)
REFERENCES base_de_dados.users (id)
ON DELETE CASCADE 
ON UPDATE CASCADE;
