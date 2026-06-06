USE base_de_dados;

CREATE TABLE base_de_dados.users (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NULL,
    email VARCHAR(100) NOT NULL,
    password_hash VARCHAR(100) NOT NULL,
    CONSTRAINT users_unique UNIQUE (email),
    CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE base_de_dados.profiles (
	id INT AUTO_INCREMENT NOT NULL,
	bio VARCHAR(100) NULL,
	description TEXT NULL,
	user_id INT NOT NULL,
	CONSTRAINT profiles_pk PRIMARY KEY (id),
	CONSTRAINT profiles_users_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE base_de_dados.roles (
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(100) NOT NULL,
	CONSTRAINT roles_pk PRIMARY KEY (id)
);

CREATE TABLE base_de_dados.users_roles (
	user_id INT NOT NULL,
	role_id INT NOT NULL,
	CONSTRAINT users_roles_pk PRIMARY KEY (user_id, role_id),
	CONSTRAINT users_roles_user_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users (id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT roles_users_roles_FK FOREIGN KEY (role_id) REFERENCES base_de_dados.roles (id) ON DELETE CASCADE ON UPDATE CASCADE
);

SHOW TABLES;

