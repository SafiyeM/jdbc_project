select * from EMPLOYEES;

--display all information of where first name is David
select * from EMPLOYEES
where FIRST_NAME = 'David' AND LAST_NAME = 'Lee';

-- '' --> whatever inside this is case sensitive

-- display firstname, lastname, salary where firstname is Peter
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where FIRST_NAME= 'Peter';

--display all information from employees where salary is bigger than 6000
select * from EMPLOYEES
where SALARY > 6000;

-- display email of who is making less than 5000
select EMAIL from EMPLOYEES
where SALARY < 5000;

-- display all information from employees who is making more than 7000 and department id is 60
select *
from EMPLOYEES
where SALARY > 7000 and DEPARTMENT_ID = 60;

--display all information from employees where salaries equals or more than 3000 and salary is equal or less than 7000

select * from EMPLOYEES
where SALARY >= 3000 and SALARY <= 7000;

-- it gives also the same result
select *
from EMPLOYEES
where SALARY between 3000 and 7000;

-- display all information from employees who is working as IT_PROG or MK_MAN
-- solution #01
select *
from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID= 'MK_MAN';

-- solution #02
select *
from EMPLOYEES
where JOB_ID in ('IT_PROG','MK_MAN');

--display all info where employee id 121, 142, 154, 165, 187
--solution #01
select  * from EMPLOYEES
where EMPLOYEE_ID = 121 or EMPLOYEE_ID = 142 or EMPLOYEE_ID= 154 or EMPLOYEE_ID = 165 or EMPLOYEE_ID = 187;

--solution #02
select * from EMPLOYEES
where EMPLOYEE_ID in (121, 142, 154, 165, 187);

--display display all info  where country id is US and IT

select * from COUNTRIES
where COUNTRY_ID in ('US', 'IT');

--display display all info except where country id is US and IT

select * from COUNTRIES
where COUNTRY_ID not in ('US', 'IT');

select * from EMPLOYEES
where DEPARTMENT_ID is null;

select * from EMPLOYEES
where MANAGER_ID is null;

select * from EMPLOYEES
where DEPARTMENT_ID is not null;

