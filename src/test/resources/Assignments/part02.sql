--PART 2
-- 1. Display full addresses from locations table in a single column
select STREET_ADDRESS|| ' ' || ' ' ||POSTAL_CODE|| ' ' ||CITY||' ' || STATE_PROVINCE|| ' ' ||COUNTRY_ID as full_address
from LOCATIONS;

-- 2. Display all information of the employee who has the minimum salary in employees table
SELECT * FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

-- 3. Display the second minimum salary from the employees
select min(SALARY) from EMPLOYEES
where SALARY = ( select min(SALARY) from EMPLOYEES where SALARY >(select min(SALARY) from EMPLOYEES) );

-- 4. Display all information of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY in ( select min(SALARY) from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) );


-- 5. List all the employees who are making above the average salary;
select * from EMPLOYEES
where SALARY > (select avg(SALARY) from EMPLOYEES)
order by SALARY desc;

-- 6. List all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY < (select avg(salary) from EMPLOYEES)
order by  SALARY desc;

-- 7. Display manager name of 'Neena'
select FIRST_NAME from EMPLOYEES
where FIRST_NAME = 'Neena';

-- 8. Find the 3rd maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by salary desc; --> this query finds all salary in desc order

select SALARY from (select distinct SALARY from EMPLOYEES order by salary desc )
where rownum < 4; --> this query finds first three maximum salary

--solution
select SALARY from EMPLOYEES
where SALARY = (select min(salary) from (select distinct SALARY from EMPLOYEES order by salary desc )
                where rownum < 4); --> this displays 3rd maximum salary

-- 9. Find the 5th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY desc; --> all salary in desc order

select SALARY from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum < 6; --> first five highest salary

-- solution
select SALARY from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where rownum < 6); --> the 5th max salary


-- 10. Find the 7th maximum salary from the employees table (do not include duplicates)
select SALARY from EMPLOYEES
where salary = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where rownum < 8); --> the 7th max salary

-- 11. Find the 10th maximum salary from the employees table (do not include duplicates)
select SALARY from EMPLOYEES
where SALARY = (select min(salary) from (select distinct salary from employees order by salary desc)
              where rownum < 11);

-- 12. Find the 3rd minimum salary from the employees table (do not include duplicates)
select distinct salary from employees order by salary; --> all salary in asc order

select SALARY from (select distinct salary from employees order by salary)
where rownum < 4; --> first 3 salary ordered in asc order

--solution
select SALARY from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct salary from employees order by salary)
                where rownum < 4);


-- 13. Find the 5th minimum salary from the employees table (do not include duplicates)
select SALARY from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct salary from employees order by salary)
                where rownum < 6);