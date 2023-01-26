/* Исходные данные: есть 2 таблицы users и levels 
   с соответствующим набором полей. 
   Структура таблиц и значения полей указаны ниже */
DROP 
  TABLE IF EXISTS users;
create table users (
  id serial primary key, 
  user_name varchar(30) not null unique, 
  level_id int not null, 
  skill int not null
);
select 
  * 
from 
  users;
insert into users (user_name, level_id, skill) 
values 
  ('Anton', 1, 900000), 
  ('Denis', 3, 4000), 
  ('Petr', 2, 50000), 
  ('Andrey', 4, 20), 
  ('Olga', 1, 600000), 
  ('Anna', 1, 1600000);
DROP 
  TABLE IF EXISTS levels;
create table levels(
  id serial primary key, 
  level_name varchar(30) not null unique
);
select 
  * 
from 
  levels;
insert into levels (level_name) 
values 
  ('admin'), 
  ('power_user'), 
  ('user'), 
  ('guest');
-- Задания на написание запросов к БД:                

/* 1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 
    и в имени встречается буква а */
select 
  * 
from 
  users 
where 
  (level_id = 1) 
  and (skill > 799000) 
  and (user_name like '%a%');
/* 1*. Отобрать из таблицы users всех пользователей, у которых level_id=1, skill > 799000 
    и в имени встречаются буквы а и А */
select 
  * 
from 
  users 
where 
  (level_id = 1) 
  and (skill > 799000) 
  and (
    (user_name like '%a%') 
    or (user_name like 'A%')
  );
/* 2. Удалить всех пользователей, у которых skill меньше 100000   */
delete from 
  users 
where 
  skill < 100000;
/* 3. Вывести все данные из таблицы users в порядке убывания по полю skill  */
select 
  * 
from 
  users 
order by 
  skill desc;
/* 4. Добавить в таблицу users нового пользователя по имени Oleg, с уровнем 4 и skill =10   */
insert into users (user_name, level_id, skill) 
values 
  ('Oleg', 4, 10);
/* 5. Обновить данные в таблице users -  для пользователей с level_id меньше 2 
    проставить skill 2000000 */
update 
  users 
set 
  skill = 2000000 
where 
  level_id < 2;
/* 6. Выбрать user_name всех пользователей уровня admin используя подзапрос*/
select 
  users.user_name 
from 
  users 
where 
  users.level_id in (
    select 
      id 
    from 
      levels 
    where 
      level_name = 'admin'
  );

/* 7. Выбрать user_name всех пользователей уровня admin используя join  */
select 
  users.user_name, 
  levels.level_name 
from 
  users 
  join levels on users.level_id = levels.id 
where 
  level_name = 'admin';
 




 
 
 
