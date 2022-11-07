CREATE TABLE tanfolyam 
(tkod INT PRIMARY KEY,
ar INT, 
tipus CHAR(20),
megnevezes VARCHAR(20));


CREATE TABLE resztvevo
(tajszam CHAR(13),
nev CHAR(20),
lakcim VARCHAR(50),
PRIMARY KEY(tajszam)); 

CREATE TABLE befizetes
(diak INT, kurzus INT, befizetes INT,
FOREIGN KEY(diak) REFERENCES resztvevo,
FOREIGN KEY(kurzus) REFERENCES tanfolyam);