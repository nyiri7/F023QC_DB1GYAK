CREATE TABLE termekek (tkod INT PRIMARY KEY, nev VARCHAR(50) NOT NULL, ear INT
CHECK (EAR > 0), kategoria CHAR(20));

INSERT INTO termekek VALUES (1,’lapát’, 2000,’K1’);
INSERT INTO termekek VALUES (2,’seprû’, 4000,’K1’);
INSERT INTO termekek VALUES (3,’mosogatógél’, 1500,’K2’);
INSERT INTO termekek VALUES (4,’szappan’, 1000,’K2’);
INSERT INTO termekek VALUES (5,’pohár’, 2400,’K3’);