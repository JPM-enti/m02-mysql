CREATE TABLE if not exists clients (
	dni CHAR(9) PRIMARY KEY,
	nom VARCHAR(50),
	direccio VARCHAR(50)
);

CREATE TABLE if not exists pagaments_pendents (
	codi INTEGER PRIMARY KEY AUTO_INCREMENT,
	dni CHAR(9),
	import DOUBLE,
	FOREIGN KEY (dni) REFERENCES clients(dni)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
);
