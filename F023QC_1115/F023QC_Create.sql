create database f023qc;

Use f023qc;

CREATE TABLE Oktato(
neptunkod VARCHAR(6) NOT NULL,
nev VARCHAR(25) NOT NULL,
tanszek VARCHAR(30)NOT NULL,
PRIMARY KEY(NEPTUNKOD));


CREATE TABLE Targy(
kod VARCHAR(10) NOT NULL,
kredit int NOT NULL,
megnevezes VARCHAR(25) NOT NULL,
neptunkod VARCHAR(6) NOT NULL,
PRIMARY KEY(kod),
FOREIGN KEY(neptunkod) REFERENCES Oktato(neptunkod));


CREATE TABLE Hallgato(
neptunkod VARCHAR(6) NOT NULL,
nev VARCHAR(25) NOT NULL,
tankor VARCHAR(10) NOT NULL,
szuldat VARCHAR(12) NOT NULL,
eletkor int NOT NULL,
irszam VARCHAR(4) NOT NULL,
varos VARCHAR(15) NOT NULL,
utca VARCHAR(20) NOT NULL,
hsz VARCHAR(10) NOT NULL,
PRIMARY KEY(neptunkod));


CREATE TABLE hallgat(
felev int NOT NULL,
vizsgajegy int NOT NULL,
kod VARCHAR(9) NOT NULL,
neptunkod VARCHAR(6) NOT NULL,
FOREIGN KEY(kod) REFERENCES Targy(kod),
FOREIGN KEY(neptunkod) REFERENCES Hallgato(neptunkod));
