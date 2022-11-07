CREATE TABLE gyarto (adoszam INT PRIMARY KEY, nev VARCHAR(30) NOT NULL, 
telephely VARCHAR(200),irsz CHAR(4),varos CHAR(40),utca CHAR(100));
CREATE TABLE termek (tkod INT PRIMARY KEY, nev VARCHAR(50),ear INT CHECK(EAR > 0)
,gyarto INT REFERENCES GYARTO);
CREATE TABLE alkatresz (akod INT PRIMARY KEY, nev VARCHAR(50) NOT NULL);
CREATE TABLE egysegek(aru INT REFERENCES termek,db INT CHECK (db > 0));
CREATE TABLE komponens(alkatresz INT REFERENCES alkatresz, termek INT REFERENCES TERMEK); 