
/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.*/

create table employees(
  id serial primary key, 
  employye_name varchar(50) not null
);


select 
  * 
from 
  employees;

insert into employees(employye_name) 
values 
  ('Ruslan1'), 
  ('Ruslan2'), 
  ('Ruslan3'), 
  ('Ruslan4'), 
  ('Ruslan5'), 
  ('Ruslan6'), 
  ('Ruslan7'), 
  ('Ruslan8'), 
  ('Ruslan9'), 
  ('Ruslan10'), 
  ('Ruslan11'), 
  ('Ruslan12'), 
  ('Ruslan13'), 
  ('Ruslan14'), 
  ('Ruslan15'), 
  ('Ruslan16'), 
  ('Ruslan17'), 
  ('Ruslan18'), 
  ('Ruslan19'), 
  ('Ruslan20'), 
  ('Ruslan21'), 
  ('Ruslan22'), 
  ('Ruslan23'), 
  ('Ruslan24'), 
  ('Ruslan25'), 
  ('Ruslan26'), 
  ('Ruslan27'), 
  ('Ruslan28'), 
  ('Ruslan29'), 
  ('Ruslan30'), 
  ('Ruslan31'), 
  ('Ruslan32'), 
  ('Ruslan33'), 
  ('Ruslan34'), 
  ('Ruslan35'), 
  ('Ruslan36'), 
  ('Ruslan37'), 
  ('Ruslan38'), 
  ('Ruslan39'), 
  ('Ruslan40'), 
  ('Ruslan41'), 
  ('Ruslan42'), 
  ('Ruslan43'), 
  ('Ruslan44'), 
  ('Ruslan45'), 
  ('Ruslan46'), 
  ('Ruslan47'), 
  ('Ruslan48'), 
  ('Ruslan49'), 
  ('Ruslan50'), 
  ('Ruslan51'), 
  ('Ruslan52'), 
  ('Ruslan53'), 
  ('Ruslan54'), 
  ('Ruslan55'), 
  ('Ruslan56'), 
  ('Ruslan57'), 
  ('Ruslan58'), 
  ('Ruslan59'), 
  ('Ruslan60'), 
  ('Ruslan61'), 
  ('Ruslan62'), 
  ('Ruslan63'), 
  ('Ruslan64'), 
  ('Ruslan65'), 
  ('Ruslan66'), 
  ('Ruslan67'), 
  ('Ruslan68'), 
  ('Ruslan69'), 
  ('Ruslan70');

	
/* Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500 */

create table salary(
  id serial primary key, monthly_salary int not null
);

select * from salary;

insert into salary(monthly_salary) 
values 
  (1000), 
  (1100), 
  (1200), 
  (1300), 
  (1400), 
  (1500), 
  (1600), 
  (1700), 
  (1800), 
  (1900), 
  (2000), 
  (2100), 
  (2200), 
  (2300), 
  (2400), 
  (2500);


/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

create table employee_salary(
  id serial primary key, employee_id int not null unique, 
  salary_id int not null
);
select 
  * 
from 
  employee_salary;

insert into employee_salary(employee_id, salary_id) 
values 
  (3, 7), 
  (1, 4), 
  (5, 9), 
  (40, 13), 
  (23, 4), 
  (11, 2), 
  (52, 11), 
  (15, 13), 
  (26, 4), 
  (16, 1), 
  (33, 7), 
  (69, 2), 
  (70, 1), 
  (68, 2), 
  (66, 3), 
  (64, 4), 
  (62, 5), 
  (60, 6), 
  (58, 7), 
  (56, 8), 
  (54, 9), 
  (51, 10), 
  (50, 11), 
  (48, 12), 
  (46, 13), 
  (44, 14), 
  (42, 15), 
  (41, 16), 
  (38, 14), 
  (36, 12), 
  (71, 1), 
  (73, 2), 
  (75, 3), 
  (77, 4), 
  (79, 5), 
  (72, 6), 
  (74, 10), 
  (76, 11), 
  (78, 12), 
  (80, 13);



/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:*/



 create table roles(
  id serial primary key, role_name int not null unique
);
ALTER TABLE 
  roles ALTER COLUMN role_name VARCHAR(30); -- отработало с ошибкой, пошел пути дропа 
drop 
  table roles;
create table roles(
  id serial primary key, 
  role_name VARCHAR(30) not null unique
);
select 
  * 
from 
  roles;
insert into roles(role_name) 
values 
  ('Junior Python developer'), 
  ('Middle Python developer'), 
  ('Senior Python developer'), 
  ('Junior Java developer'), 
  ('Middle Java developer'), 
  ('Senior Java developer'), 
  ('Junior JavaScript developer'), 
  ('Middle JavaScript developer'), 
  ('Senior JavaScript developer'), 
  ('Junior Manual QA engineer'), 
  ('Middle Manual QA engineer'), 
  ('Senior Manual QA engineer'), 
  ('Project Manager'), 
  ('Designer'), 
  ('HR'), 
  ('CEO'), 
  ('Sales manager'), 
  (
    'Junior Automation QA engineer'
  ), 
  (
    'Middle Automation QA engineer'
  ), 
  (
    'Senior Automation QA engineer'
  );


/* Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:*/

 create table roles_employee(
  id serial primary key, employee_id int not null unique, 
  role_id int not null
);
select 
  * 
from 
  roles_employee;
insert into roles_employee (employee_id, role_id) 
values 
  (7, 2), 
  (20, 4), 
  (3, 9), 
  (5, 13), 
  (23, 4), 
  (11, 2), 
  (10, 9), 
  (22, 13), 
  (21, 3), 
  (34, 4), 
  (6, 7), 
  (40, 1), 
  (41, 2), 
  (42, 3), 
  (43, 4), 
  (44, 5), 
  (45, 6), 
  (46, 7), 
  (47, 8), 
  (48, 9), 
  (49, 10), 
  (50, 11), 
  (51, 12), 
  (52, 13), 
  (53, 14), 
  (54, 15), 
  (55, 16), 
  (57, 1), 
  (58, 2), 
  (59, 3), 
  (60, 4), 
  (61, 5), 
  (62, 6), 
  (63, 7),  
  (64, 8), 
  (65, 9), 
  (66, 10), 
  (67, 11), 
  (68, 12), 
  (69, 13);




