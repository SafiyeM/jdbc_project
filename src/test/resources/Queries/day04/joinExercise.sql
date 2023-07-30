select * from employees;

--1.Display all first_name and  related department_name
select * from DEPARTMENTS;


select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- order the list based on firstname ascending
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME;

--2.Display all first_name and department_name including the  employee without department
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E left join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME;

-- if we change the position of the table to get the same result
select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS D right join EMPLOYEES E
on D.DEPARTMENT_ID = E.DEPARTMENT_ID;

--3.Display all first_name and department_name including the department without employee

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E right join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--4.How many employee we hae for each department name
select DEPARTMENT_NAME, count(*)
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
group by DEPARTMENT_NAME;

--5.Display all firstname and department name including the department without employees
-- and also employees without the department

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E full join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--6.Display all cities and related country names
select * from LOCATIONS;

select * from COUNTRIES;

select city, COUNTRY_NAME
from LOCATIONS L join COUNTRIES C2
on L.COUNTRY_ID = C2.COUNTRY_ID;

--7.Display all cities and related country names including with countries without city.

select city, COUNTRY_NAME
from LOCATIONS L right join COUNTRIES C2
on L.COUNTRY_ID = C2.COUNTRY_ID;

--8.Display all department name and related street address

select * from DEPARTMENTS;
select * from LOCATIONS;

select DEPARTMENT_NAME,L.LOCATION_ID,D.LOCATION_ID, STREET_ADDRESS
from LOCATIONS L join DEPARTMENTS D
on L.LOCATION_ID = D.LOCATION_ID;

--9.Display first_name,last_name and department_name, city for all employee
select * from EMPLOYEES;
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, COUNTRY_NAME, REGION_NAME
from EMPLOYEES E
            join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
            join LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
            join COUNTRIES C on L.COUNTRY_ID = C.COUNTRY_ID
            join REGIONS R on C.REGION_ID = R.REGION_ID;

--how many employees working for each country_name?
-- how many? --> count()
-- each --> group by
-- this query group people based on country names
select COUNTRY_NAME, count(*)
from EMPLOYEES E
         join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
         join LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
         join COUNTRIES C on L.COUNTRY_ID = C.COUNTRY_ID
         join REGIONS R on C.REGION_ID = R.REGION_ID
group by COUNTRY_NAME;
--having count(*)> 10; -- we can add also this

--LEFT JOIN WITH WHERE
Select *
from CUSTOMER C full join ADDRESS A
on A.ADDRESS_ID = C.ADDRESS_ID
where A.ADDRESS_ID is null or C.ADDRESS_ID is null;


