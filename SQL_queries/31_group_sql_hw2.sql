
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








Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

id
employee_id
salary_id
1
3
7
2
1
4
3
5
9
4
40
13
5
23
4
6
11
2
7
52
10
8
15
13
9
26
4
10
16
1
11
33
7
...
...
...















Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:

id
role_name
1
Junior Python developer
2
Middle Python developer
3
Senior Python developer
4
Junior Java developer
5
Middle Java developer
6
Senior Java developer
7
Junior JavaScript developer
8
Middle JavaScript developer
9
Senior JavaScript developer
10
Junior Manual QA engineer
11
Middle Manual QA engineer
12
Senior Manual QA engineer
13
Project Manager
14
Designer
15
HR
16
CEO
17
Sales manager
18
Junior Automation QA engineer
19
Middle Automation QA engineer
20
Senior Automation QA engineer



Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

id
employee_id
role_id
1
7
2
2
20
4
3
3
9
4
5
13
5
23
4
6
11
2
7
10
9
8
22
13
9
21
3
10
34
4
11
6
7
...
...
...






