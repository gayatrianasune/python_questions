CREATE TABLE Customer
(
ID int,
NAME varchar(50) ,
AGE int,
CITY char(50),
SALARY numeric
);

select * from customer;

insert into customer (ID , NAME , AGE , CITY , SALARY) values (1 , 'Sam' , 26 , 'Delhi' , 9000),(2, 'Ram' , 19 , 'Bangalore' , 11000),(3 , 'Pam' , 31 , 'Mumbai' , 6000),(4 , 'Jam', 42 , 'Pune' , 10000);
select * from customer;

update customer 
set  NAME  = 'Xam' , AGE = 32  
where ID= 4;

-- delete values from table
delete from customer where ID = 3;

--joins 
create table A (id int,rates int);
insert into A values(1,10),(2,20),(3,30);
select * from A;

create table B (id int,rates int);
insert into B values(5,10),(6,15),(2,20),(2,20);
select * from B;

select * 
from A left join B
on A.id= B.id;

select * 
from A left join B
on A.id = B.id
where b.id is null ;

-- self join
select *
from A as a1
join A as a2
on a1.id = a2.id ;

-- youtube

create table cust
(
ID int8 primary key,
NAME varchar(50) not null,
age int not null,
CITY char(50),
SALARY numeric
);

insert into cust
(ID,NAME,age,CITY,SALARY)
VALUES
( 1 , "SAM" , 26 , "DELHI" , 9000 ) ,
( 2 , "RAM" , 19, "BENGALORE" , 9000 ) ,
( 3 , "PAM" , 31, "MUMBAI" , 9000 ) ,
( 4 , "JAM" , 42 , "PUNE" , 9000 ) ;

SELECT * FROM cust;

UPDATE cust
SET NAME="XAM" , age=32
WHERE ID=4;

SELECT * FROM cust;

DELETE from cust 
WHERE ID=3;
SELECT * FROM CUST;

alter cust
add srno ;--not working

drop table cust;  -- delete the table
truncate table cust;  -- delete data only in table column remain same


--another data
create table classroom
(
roll_no int,
name varchar(15),
house varchar(15),
grade varchar(1)
);

insert into classroom
(roll_no , name , house , grade )
values
(1 , 'Sam' , 'Akash' , 'B' ),
(2 , 'Ram' , 'Agni' , 'A' ),
(3 , 'Sham' , 'Jal' , 'B' ),
(4 , 'Sunder' , 'Agni' , 'A' ),
(5 , 'Ram' , 'VAYU' , 'B' );

SELECT * FROM classroom;
select roll_no , name from classroom;
select distinct grade from classroom;
select distinct house from classroom;

-- where => use for condition

select name from classroom
where grade='A'; 

select roll_no from classroom
where grade='B' ;
