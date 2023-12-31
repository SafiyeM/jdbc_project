select *from employees;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS;

create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);
select * from Testers;

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;
select * from Testers;

select  * from DEVELOPERS
union
select * from TESTERS;

select NAMES from DEVELOPERS
union
select NAMES from TESTERS;
/*

 UNION ALL

 - Dont Remove DUPS
 - Dont sort the results
 */

SELECT * FROM DEVELOPERS
UNION ALL
SELECT * FROM TESTERS;

--wrong data type example (will not work)
SELECT Id_Number,Names FROM DEVELOPERS
UNION ALL
SELECT Names,Salary FROM TESTERS;

/*
MINUS
 It removes same data from first table and gives result from first table

 */

SELECT names FROM DEVELOPERS
minus
SELECT Names FROM TESTERS;


SELECT names FROM TESTERS
minus
SELECT Names FROM DEVELOPERS;


--INTERSECT
SELECT NAMES FROM TESTERS
INTERSECT
SELECT NAMES FROM DEVELOPERS;

SELECT NAMES FROM DEVELOPERS
INTERSECT
SELECT NAMES FROM TESTERS;
