CREATE database F023QC;
use F023QC;
create table tulajdonos (
Tkod int primary key,
nev varchar(20) not null,
varos char(20));

create table auto (
rendszam char(7) primary key,
tipus varchar(25) not null,
szin varchar(15),
kor int(2),
ar int(8),
tulaj int(3),
foreign key(tulaj) references tulajdonos(Tkod));

insert into tulajdonos values(101,'Kis Janos', 'Miskolc');
insert into tulajdonos values(102, 'Kis Eva', 'Szerencs');
insert into tulajdonos values(103,'Retek Odon', 'Miskolc');
insert into tulajdonos values(104,'Virag Zoltan', 'Nyek');
insert into tulajdonos values(105,'Nagy Eszter', 'Nyek');
insert into tulajdonos values(106,'Kovacs Magor', 'Szerencs');
insert into tulajdonos values(107, 'Asztal Antal', 'Miskolc');

insert into auto values('FER-831','OPEL CORSA','Piros',18,390,101);
insert into auto values('GDF-525','Renault Twingo','Fekete',16,280,null);
insert into auto values('HUB-936','Suzuki Swift','Fekete',16,500,null);
insert into auto values('IXL-239','Suzuki Swift','Zöld',15,450,105);
insert into auto values('JAH-425','Skoda Fabia','Piros',13,620,102);
insert into auto values('JCD-443','OPEL Astra','Fehér',12,990,107);
insert into auto values('KAP-290','BMW 316','Fekete',6,3250,102);
insert into auto values('KFT-204','OPEL Astra','Szürke',7,1250,106);
insert into auto values('MLM-211','Toyota Yaris','Fehér',3,1850,105);
