--                       Select challenges

use sql_store;

-- question 1
select * from customers;

-- question 2
select first_name,
		last_name,
        address
from customers;

-- question 3
select  first_name,
		last_name,
        address
from customers
where first_name like 'I%';

--                                                    Update challenges
set SQL_SAFE_UPDATES=0;-- this is for disabling the safe update mode
-- question 1
update customers
set first_name='Iney'
where first_name='Ines';

select first_name
from customers
where first_name like 'I%';

--                                                   SUPER ULTRA HYPER MEGA CURD EXERCISE
 
create database shirt_db;
use shirt_db;

create table shirts
(shirt_id int not null auto_increment,
artical varchar(100),
color varchar(100),
shirt_size varchar(100),
last_worn int,
primary key(shirt_id) );

insert into shirts(artical,color,shirt_size,last_worn)
values('t-shirt','white','S',10),
		('t-shirt','green','S',200),
        ('polo shirt','black','M',10),
        ('tank top','blue','S',50),
        ('t-shirt','pink','S',0),
        ('polo shirt','red','M',5),
        ('tank top','white','S',200),
        ('tank top','blue','M',15);
        
insert into shirts(artical,color,shirt_size,last_worn)
values ('polo shirt','purple','M',50);

select artical,color
from shirts;

select artical,color,shirt_size,last_worn
from shirts
where shirt_size='M';

update shirts 
set shirt_size='L'
where artical='polo shirt';

update shirts
set last_worn=0
where last_worn=15;

update shirts 
set shirt_size='XS',color='off white'
where color='white';

delete  
from shirts
where last_worn=200;

delete from shirts;

drop table shirts;