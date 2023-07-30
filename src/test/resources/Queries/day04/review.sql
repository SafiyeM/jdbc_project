select * from employees;

--display all information who is getting 3rd lowest salary

-- step01- this query gives us all salary ordered by low to high in ascending order
select distinct SALARY from EMPLOYEES order by salary;

-- step02- get first 3 salary from all salary ordered by low to high in ascending order
select SALARY from (select distinct SALARY from EMPLOYEES order by salary)
where rownum < 4; --> we find out the 3rd lowest salary is 2400

--step03- if the 3rd lowest salary is 2400 -
select SALARY from EMPLOYEES
where SALARY = 2400; --> implement the dynamic query instead of 2400

-- last step and the end solution of the question "who is getting 3rd lowest salary" as a dynamic solution of the problem
select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by salary)
                where rownum < 4);

-- what is the Alexander's department name?
select * from EMPLOYEES; -- Alexander's department_id is 60

select * from DEPARTMENTS; -- Department name of department_id is IT

select DEPARTMENT_NAME from DEPARTMENTS
where DEPARTMENT_ID = 60; --> this gives me IT



