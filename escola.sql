USE escola;

CREATE TABLE if not exists professor(
	id_p INTEGER PRIMARY KEY AUTO_INCREMENT,
	nif_p CHAR(9),
	nom VARCHAR(30),
	especialitat VARCHAR(30),
	telefon CHAR(13)
);

DESCRIBE professor;

DROP TABLE alumne;

CREATE TABLE if not exists alumne(
	nummatricula INTEGER PRIMARY KEY,
	nom VARCHAR(30),
	telefon CHAR(13),
	datanaixement date,
	matriculacions INTEGER
);

DESCRIBE alumne;

CREATE TABLE if not exists matriculacio(
	any_academic INTEGER PRIMARY KEY
);

DESCRIBE matriculacio;

CREATE TABLE if not exists assignatura(
	codi INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(30),
	imparteix INTEGER,
	FOREIGN KEY (imparteix) REFERENCES professor(id_p)
);

DESCRIBE assignatura;
