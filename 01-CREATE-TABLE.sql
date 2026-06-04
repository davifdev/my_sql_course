CREATE TABLE base_de_dados.users (
	id INTEGER auto_increment NOT NULL,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NULL,
	email varchar(100) NOT NULL,
	password_hash varchar(100) NOT NULL,

  CONSTRAINT users_unique UNIQUE KEY (email);
	CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE base_de_dados.profiles (
	id INTEGER auto_increment NOT NULL,
	bio varchar(100) NULL,
	description TEXT NULL,
	user_id INTEGER NOT NULL,

	CONSTRAINT profiles_pk PRIMARY KEY (id),
	CONSTRAINT profiles_users_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) 
)

CREATE TABLE base_de_dados.roles (
	id INTEGER auto_increment NOT NULL,
	name varchar(100) NULL,

	CONSTRAINT roles_pk PRIMARY KEY (id)
)

CREATE TABLE base_de_dados.users_roles (
	user_id INTEGER NOT NULL,
	role_id INTEGER NOT NULL,
  
	CONSTRAINT users_roles_pk PRIMARY KEY (user_id,role_id),
	CONSTRAINT users_roles_users_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT users_roles_roles_FK FOREIGN KEY (role_id) REFERENCES base_de_dados.roles(id) ON DELETE CASCADE ON UPDATE CASCADE
)


