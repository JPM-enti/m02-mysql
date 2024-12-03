CREATE TABLE if not exists client(
	id CHAR(10) PRIMARY KEY,
	dni CHAR(9),
	nom VARCHAR(15),
	adreça VARCHAR(50)
);

DESCRIBE client;

DROP TABLE if exists assumpte;

CREATE TABLE assumpte(
	id CHAR(7) PRIMARY KEY,
	periode DATE,
	estat VARCHAR(10),
	correspon_a VARCHAR(15),
	FOREIGN KEY (correspon_a) REFERENCES client(id)
);


DESCRIBE assumpte;

CREATE TABLE if not exists procurador(
	id CHAR(10) PRIMARY KEY,
	nom VARCHAR(20),
	adreça VARCHAR(50),
	dni CHAR(9)
);

DESCRIBE procurador;

-- SOURCE mysqlaltergavinet.sql


