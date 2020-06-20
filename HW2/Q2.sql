create table class
( SID integer,
className char(30),
Grade char(10)
);

insert into class
values(123, 'ARCH201' ,'A');

insert into class
values(123,'QUAN432' ,'B');

insert into class
values(345,'ECON966', 'D');

insert into class
values(662,'AMER352' ,'B');

insert into class
values(662 ,'ECON966' ,'A');

insert into class
values(662 ,'QUAN432' ,'B');

insert into class
values(345, 'QUAN432' ,'A');

select ClassName,count(SID)
from class
group by (ClassName)
order by count(SID) desc, className asc;

