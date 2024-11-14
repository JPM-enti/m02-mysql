CREATE TABLE IF NOT EXISTS zoo(
	id CHAR(7) PRIMARY KEY,
	nom VARCHAR(30),
	ciutat VARCHAR(30),
	pais VARCHAR(30),
	pressupost INT,
	grandaria INT
);

DESCRIBE zoo;

CREATE TABLE IF NOT EXISTS especie(
	id CHAR(10) PRIMARY KEY,
	nom_vulgar VARCHAR(20),
	nom_cientific VARCHAR(20),
	familia VARCHAR(20),
	en_perill_extincio bool
);

DESCRIBE especie;

CREATE TABLE IF NOT EXISTS animal(
	id CHAR(10) PRIMARY KEY,
	num_identificacio CHAR(7),
	sexe bool,
	any_naixement date,
	pais_origen VARCHAR(30),
	contintent VARCHAR(15),
	perteneix_a VARCHAR(20),
	posegut_per VARCHAR(20),
	FOREIGN KEY (perteneix_a) REFERENCES especie(id),
	FOREIGN KEY (posegut_per) REFERENCES zoo(id)
);

DESCRIBE animal;
