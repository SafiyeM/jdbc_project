select  * from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials ,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

create view EmployeeInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials ,
       FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

select * from EmployeeInfo;
/*
 so we created virtual table -> see under views

 initials         fullName
 E.A.,            Ellen Abel
 S.A.,            Sundar Ande
 M.A.,            Mozhe Atkinson
 D.A.,            David Austin
 H.B.,            Hermann Baer
 S.B.,            Shelli Baida
 A.B.,            Amit Banda
 */

 select initials from EmployeeInfo;

--drop view -> if we do not need anymore the virtual table we created, we can exit
drop view EmployeeInfo;
