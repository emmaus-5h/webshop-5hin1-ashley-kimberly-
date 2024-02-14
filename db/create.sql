--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description_id TEXT,
  merken_id TEXT,
  price NUMERIC(10, 2),
  quantity_id NUMERIC (5)
  pittigheid_id TEXT,
  soortnoedel_id TEXT,
  smaak_id TEXT 
);

CREATE TABLE merken (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
); 

CREATE TABLE pittigheid (
  id INTERGER PRIMARY KEY autoincrement,
  hoeveelheid TEXT
);

CREATE TABLE smaak(
  id INTERGER PRIMARY KEY autoincrement,
  soort TEXT
);

CREATE TABLE soortnoedel(
  id INTERGER PRIMARY KEY autoincrement,
  dikte TEXT
);

CREATE TABLE quantity (
  id INTERGER PRIMARY KEY autoincrement,
  grootte TEXT 
);

CREATE TABLE beschrijving (
  id INTERGER PRIMARY KEY autoincrement,
  merken_id TEXT.
  description_id
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name,beschrijving_id , quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Carbonara Buldak Hot Chicken Flavor Ramen ', 1 ,1, 2,'816905633-0', 2.65, 1, 1, 2);
insert into products (name,beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen cheese', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 1, 2, '077030122-3', 1.61, 2,1,3);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen, 2x spicy', 'Pellentesque at nulla. Suspendisse potenti.',1, 2, '445924201-X', 1.19 ,1 ,1 ,1);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Kip Smaak', 'el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.',2,1, '693155505-7', 13.5, 3, 2, 1);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Garnalen Smaak', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',2, 1,  '686928463-6', 14, 3, 2, 4);
insert into products (name, beschrijving_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Groenten Smaak', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.',2 ,1, '492662523-7', 14, 3, 2, 1);

/* dit is de n op m relatie */

insert into beschrijving (merken_id, description_id) values (1, 'Hou jij van  pittig eten en van noedels. Koop dan Buldak noedels!');
insert into beschrijving (merken_id, description_id) values (2 , 'Lekkerste goedkope noedels!');

insert into merken (naam) values ('Buldak');
insert into merken (naam) values ('Indomie');


/* dit is de 1 op n relatie */

insert into pittigheid (hoeveelheid) values ('pittig');
insert into pittigheid (hoeveelheid) values ('ultiem pittig');
insert into pittigheid (hoeveelheid) values ('neutraal');

insert into smaak (soort) values ('kip');
insert into smaak (soort) values ('carbonara kip');
insert into smaak (soort) values ('kaas kip');
insert into smaak (soort) values ('garnaal');
insert into smaak (soort) values ('groente');

insert into soortnoedel_id (dikte) values ('ramen');
insert into soortnoedel_id (dikte) values ('bamisoep');


insert into quantity (grootte) values ('70');
insert into quantity (grootte) values ('140');


