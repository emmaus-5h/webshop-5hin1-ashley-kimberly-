--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  beschrijving_id TEXT,
  quantity_id NUMERIC (5),
  code VARCHAR(15),
  price NUMERIC(10, 2),
  pittigheid_id TEXT,
  soortnoedel_id TEXT,
  smaak_id TEXT 
);

CREATE TABLE beschrijving (
  id INTEGER PRIMARY KEY autoincrement,
  merken_id INTERGER,
  description_id TEXT
);

CREATE TABLE merken (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
); 

CREATE TABLE pittigheid (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  hoeveelheid TEXT
);

CREATE TABLE smaak(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  soort TEXT
);

CREATE TABLE soortnoedel(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  dikte TEXT
);

CREATE TABLE quantity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  grootte TEXT 
);




--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, beschrijving_id , quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Carbonara Buldak Hot Chicken Flavor Ramen ', 1, 2,'67627', 2.65, 1, 1, 2);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen cheese', 1 , 2, '67371', 1.61, 2,1,3);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen, 2x spicy', 1, 2, '63599', 1.61 ,1 ,1 ,1);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen, habenero en limoen', 1, 2, '64928', 1.81 ,1 ,1 ,7);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Instant Ramen met Extreem Pittige Kip', 1, 2, '57452', 1.15 ,1 ,1 ,1);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Kip Smaak', 2,1, '21338', 0.70, 3, 2, 1);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Garnalen Smaak', 2, 1,  '20029', 0.70 , 3, 2, 4);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Groenten Smaak',2 ,1, '20156', 0.70, 3, 2, 5);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Nongshim Shin ramyun noodles Beef',3 ,3, '97651', 1.49, 1, 1, 6);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Nongshim Shin ramyun noodles Kimchi',3 ,3, '98596', 1.49, 2, 1, 8);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Nongshim Shin ramyun noodles Black',3 ,3, '92127', 2.90, 2, 1, 9);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Yum Yum Shrimp flavour instant noodle',4 ,4, '85463', 0.59, 3, 2, 4);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Yum Yum Vegetable flavour instant noodle',4 ,4, '86759', 0.59, 3, 2, 5);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Yum Yum Duck flavour instant noodle',4 ,4, '90379', 0.70, 3, 2, 10);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Yum Yum Curry flavour instant noodle',4 ,4, '90676', 0.68, 3, 2, 11);

/* dit is de n op m relatie */

insert into beschrijving (merken_id, description_id) values (1, 'Hou jij van  pittig eten en van noedels? Koop dan Buldak noedels!');
insert into beschrijving (merken_id, description_id) values (2 , 'Lekkerste goedkope noedels!');
insert into beschrijving (merken_id, description_id) values (3 , 'De lekkerste pittige vegetarische koreaanse instant noodlesoep.');
insert into beschrijving (merken_id, description_id) values (4 , 'Yum Yum is de lekkerstee Thaise instant noodlesoep');

insert into merken (name) values ('Buldak');
insert into merken (name) values ('Indomie');
insert into merken (name) values ('Nongshim');
insert into merken (name) values ('YumYum');


/* dit is de 1 op n relatie */

insert into pittigheid (hoeveelheid) values ('pittig');
insert into pittigheid (hoeveelheid) values ('ultiem pittig');
insert into pittigheid (hoeveelheid) values ('neutraal');

insert into smaak (soort) values ('kip');
insert into smaak (soort) values ('carbonara kip');
insert into smaak (soort) values ('kaas kip');
insert into smaak (soort) values ('garnaal');
insert into smaak (soort) values ('groente');
insert into smaak (soort) values ('beef');
insert into smaak (soort) values ('Habenero en Limoen');
insert into smaak (soort) values ('Kimchi');
insert into smaak (soort) values ('Zwarte knoflook');
insert into smaak (soort) values ('Eend');
insert into smaak (soort) values ('Curry');


insert into soortnoedel (dikte) values ('ramen');
insert into soortnoedel (dikte) values ('bamisoep');

insert into quantity (grootte) values ('70');
insert into quantity (grootte) values ('130');
insert into quantity (grootte) values ('120');
insert into quantity (grootte) values ('60');

SELECT * FROM quantity;
SELECT * FROM beschrijving;

SELECT
