CREATE TABLE base_de_dados.users (
	id INTEGER auto_increment NOT NULL,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NULL,
	email varchar(100) NOT NULL,
	password_hash varchar(100) NOT NULL
);