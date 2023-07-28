

/*
    AGGREGATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS
    - count --> it will count rows
    - max --> it will give max value
    - min --> it will give min value
    - sum --> it will give total value
    -- avg --> it will give average value

    Aggregate functions takes multi row and return one result
    All of them ignore null values.
 */

-- how many departments we have ?
select * from DEPARTMENTS;
select count(*) from DEPARTMENTS;

--how many locations we have?
select * from LOCATIONS;
select count(*) from LOCATIONS;

--107
select *from EMPLOYEES;
select count(*) from EMPLOYEES;

--106-> it will not count null value of one employee's department id
select count(DEPARTMENT_ID)
from EMPLOYEES;

--Task
-- how many different firstname we have?
select count(distinct FIRST_NAME)  from EMPLOYEES;

--how many employees working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--max
SELECT MAX(SALARY)
from EMPLOYEES;

--min
SELECT MIN(SALARY)
from EMPLOYEES;

--avg
SELECT AVG(SALARY)
from EMPLOYEES;

SELECT ROUND(AVG(SALARY)) from EMPLOYEES;
SELECT ROUND(AVG(SALARY),1) from EMPLOYEES;
SELECT ROUND(AVG(SALARY),2) from EMPLOYEES;
SELECT ROUND(AVG(SALARY),3) from EMPLOYEES;

--SUM

select sum(SALARY) from EMPLOYEES;