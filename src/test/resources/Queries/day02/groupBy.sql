--your manager is asking all jobs id and their average salary.

select *
from EMPLOYEES;


select distinct JOB_ID
from EMPLOYEES;

--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'IT_PROG';

--get me average salary for AC_ACCOUNT
select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'AC_ACCOUNT';

--get me average salary for AC_MGR
select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'AC_MGR';

select JOB_ID, avg(SALARY), count(*), sum(SALARY), min(SALARY), max(SALARY)
from EMPLOYEES
group by JOB_ID;

--Display how many departments we have in each location
select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID;

-- order result based on number of departments in desc
select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by count(*) desc;
--if we write order by LOCATION_ID desc;-> it orders this one.


--we order based on the column that we included in select statement
-- order by 2 -> it orders the second(count(*)) one in descending order.
/*
 location_id  count(*)
ex:  1700,        21
     2400,         1
     1400,         1
     1500,         1
     2700,         1
     1800,         1
     2500,         1
 */
select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by 2 desc;


Select * from REGIONS;
select * from COUNTRIES;
--Display how many countries we have in each regions
select REGION_ID, count(*)
from COUNTRIES
group by REGION_ID;

--order them based on number of countries in desc order
select REGION_ID, count(*)
from COUNTRIES
group by REGION_ID
order by 2 desc;

select REGION_ID, count(*)
from COUNTRIES
group by REGION_ID
order by count(*) asc;

--------------------------
--get me total salary for each department from employees table and display all employees.
select DEPARTMENT_ID, sum(SALARY), count(*)
from EMPLOYEES
group by DEPARTMENT_ID;


select DEPARTMENT_ID, sum(SALARY), count(*)
from EMPLOYEES
where DEPARTMENT_ID is not null --removing null department id from result
group by DEPARTMENT_ID;

--display jobIds where their avg salary more than 5k

select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID
HAVING AVG(SALARY) > 5000
order by 2 desc;

--display departments where their average salary is more than 6K
select DEPARTMENT_ID,round(avg(salary))
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having avg(SALARY) > 6000;


--IQ --> display duplicate(more than one) firstname from employees table.

select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) >1;
/*
  firstname        count
 ex: Peter,          3  -> so we have 3 peters
     Michael,        2
     Steven,         2
     John,           3
 */

--display department id where employees count is bigger than 5

select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) >5
order by 2 desc;





