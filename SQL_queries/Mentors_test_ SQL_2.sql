/* Таблица "client", которая содержит информацию о клиентах компании. 
Она содержит поля:
"¡d" - уникальный идентификатор клиента;
"first name" - имя клиента;
"last name" - фамилия клиента */

drop 
  table if exists client cascade;
create table client(
  id serial primary key, 
  First_Name varchar(15) not null, 
  Last_Name varchar(30) not null
);
insert into client(First_Name, Last_Name) 
values 
  ('Peter', 'Parker'), 
  ('Steven', 'Rogers'), 
  ('Tony', 'Stark'), 
  ('Bruce', 'Banner'), 
  ('Natalia', 'Romanova'), 
  ('Elizabeth', 'Brant'), 
  ('Wanda', 'Maximoff'), 
  ('Wilson', 'Fisk'), 
  ('Harvey', 'Dent'), 
  ('Bruce', 'Wayne');
select 
  * 
from 
  client;
 
/* Таблица "apartment", которая содержит информацию о продаваемых квартирах. 
Она содержит поля:
"Id" - уникальный идентификатор квартиры;
"address" - адрес квартиры;
"rooms" - количество комнат в квартире; */
 
drop 
  table if exists apartment cascade;
create table apartment(
  id serial primary key, 
  Address varchar(150) not null, 
  Rooms int not null
);
insert into apartment(address, rooms) 
values 
  (
    'Istanbul, Fatih, Ataturk blv., b-23,f-72', 
    3
  ), 
  (
    'Istanbul, Beyoglu, Erbakan mah., b-11,f-22', 
    2
  ), 
  (
    'Istanbul, Besiktas, DİKİLİTAŞ MAH., b-3,f-119', 
    7
  ), 
  (
    'Istanbul, Shishli , Darülaceze Cd. No:3A, f-56', 
    3
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , BEYLİKDÜZÜOSB MAH. b-44, f-96', 
    4
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , BÜYÜKŞEHİR MAH. b-122, f-76', 
    3
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , BEYLİKDÜZÜOSB MAH. b-44, f-96', 
    4
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , CUMHURİYET MAH. b-12, f-74', 
    3
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , GÜRPINAR MAH. b-14, f-88', 
    3
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , MARMARA MAH. b-6, f-46', 
    2
  ), 
  (
    'Istanbul, BEYLİKDÜZÜ , SAHİL MAH. b-111, f-111', 
    3
  ), 
  (
    'Istanbul, BASAKSEHIR , BAŞAK MAH. b-55, f-66', 
    1
  ), 
  (
    'Istanbul, BASAKSEHIR , ZİYA GÖKALP MAH. b-37, f-99', 
    3
  ), 
  (
    'Istanbul, BASAKSEHIR , GÜVERCİNTEPE MAH.  b-49, f-278', 
    4
  ), 
  (
    'Istanbul, BASAKSEHIR , BAHÇEŞEHİR 2. KISIM MAH. b-43, f-2', 
    2
  ), 
  (
    'Istanbul, BASAKSEHIR , BAHÇEŞEHİR 1. KISIM MAH. b-29, f-43', 
    3
  ), 
  (
    'Istanbul, BASAKSEHIR , İKİTELLİ OSB MAH. b-41, f-86', 
    1
  );
 
select 
  * 
from 
  apartment;
 
/* Таблица "view", которая содержит информацию о записи на просмотр квартир клиентами. 
Она содержит поля:
"id" - уникальный идентификатор записи;
"apartment id" - идентификатор квартиры,
"client id" - идентификатор клиента, записанного на просмотр;
"date" - дата просмотра квартиры */
 
drop 
  table if exists view cascade;
create table view(
  id serial primary key, 
  Apartment_id int not null, 
  Client_id int not null, 
  Date DATE not null, 
  foreign key (Apartment_id) references apartment(id), 
  foreign key (Client_id) references client(id)
);
insert into view(apartment_id, client_id, date) 
values 
  (11, 2, '02.04.2023'), 
  (13, 2, '02.05.2023'), 
  (15, 2, '02.06.2023'),
  (1, 2, '02.02.2023'), 
  (2, 4, '03.02.2023'), 
  (4, 5, '02.02.2023'), 
(5, 7, '02.02.2023'), 
(5, 10, '02.02.2023'), 
(12, 9, '01.31.2023'), 
(13, 5, '01.31.2023'), 
(14, 1, '02.28.2023'), 
(15, 8, '11.02.2023'), 
(16, 3, '11.02.2023'), 
(17, 9, '11.02.2023'), 
(17, 10, '11.02.2023');
select 
  * 
from 
  view;
 
/* Обратите внимание, что на просмотр одной квартиры могут записаться 
несколько клиентов,один клиент может записаться на просмотр нескольких квартир.
Исходя из описания и схемы базы данных, составьте SQL-запрос, 
результатом которого будет список фамилий клиентов, 
записанных на просмотр двух и более трехкомнатных квартир.*/
 
select 
  client.first_name, 
  client.last_name, 
  apartment.rooms, 
  count(view.apartment_id) as Attepmt 
from 
  client 
  join view on view.client_id = client.id 
  join apartment on apartment.id = view.apartment_id 
where 
  apartment.rooms = 3 
group by 
  client.first_name, 
  client.last_name, 
  apartment.rooms 
having 
  count(view.apartment_id) >= 2;
