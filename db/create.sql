--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  merken_id TEXT,
  price NUMERIC(10, 2),
  quantity_id NUMERIC (5)
  pittigheid_id TEXT,
  soortnoedel_id TEXT,
  smaak_id TEXT
  
  
);

CREATE TABLE merken_id (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT
); 

CREATE TABLE pittigheid_id (
  id INTERGER PRIMARY KEY autoincrement,
  hoeveelheid TEXT
);

CREATE TABLE smaak_id(
  id INTERGER PRIMARY KEY autoincrement,
  soort TEXT
);

CREATE TABLE soortnoedel_id(
  id INTERGER PRIMARY KEY autoincrement,
  dikte TEXT
);

CREATE TABLE quantity_id (
  id INTERGER PRIMARY KEY autoincrement,
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

insert into products (name, description, merken_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Carbonara Buldak Hot Chicken Flavor Ramen ', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.',1, '130','816905633-0', 2.65);
insert into products (name, description, merken_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen cheese', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 1, '140', '077030122-3', 1.61);
insert into products (name, description, merken_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Samyang Hot chicken ramen, 2x spicy', 'Pellentesque at nulla. Suspendisse potenti.',1, '140', '445924201-X', 1.19);
insert into products (name, description, merken_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Kip Smaak', 'el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.',2,'70', '693155505-7', 13.5);
insert into products (name, description, merken_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Garnalen Smaak', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.',2,'70',  '686928463-6', 14);
insert into products (name, description,merken_id, quantity_id, code, price, pittigheid_id, soortnoedel_id, smaak_id) values ('Indomie Instant noedels Groenten Smaak', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.',2 ,'70', '492662523-7', 14);

/* dit is de 1 op n relatie */

insert into merken (name, description) values ('Buldak', 'Hou jij van  pittig eten en van noedels. Koop dan Buldak noedels!');
insert into merken (name, description) values ('Indomie', 'Lekkerste goedkope noedels! ');

insert into pittigheid (hoeveelheid) values (ultiem pittig);

insert into smaak (soort) values (kip);

insert into soortnoedel_id (dikte) values (ramen);

insert into quantity (grootte) values (70);








/* SELECT * FROM products, merken
  WHERE products.merken.id = merken.id

nu moeten wij zorgen dat tabel products en tabel merken samen word gevoegd ookwel n:m relatie/*