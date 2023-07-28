select * from EMPLOYEES;

--Display all information who is making max salary
--max salary
SELECT MAX(SALARY) FROM EMPLOYEES; --24000

--if we know max salary can we find who is getting it ?
SELECT *
FROM EMPLOYEES
WHERE SALARY = 24000;

--if the Steven King salary changes we cant find person who is getting max salary with the query above

--dynamic result
select * from EMPLOYEES
where SALARY in (select max(SALARY) from EMPLOYEES);

--TASK: Give me all information who is getting min salary
--min salary ?
select min(SALARY) from EMPLOYEES; -- 2100

--who is making min salary?
select * from EMPLOYEES
where salary = 2100;

--dynamic
select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

--display all information who is getting second highest salary ?
--find max salary
select max(SALARY) from EMPLOYEES; -- 24000

--second max salary
select max(SALARY) from EMPLOYEES
where salary <24000; -- 17000

--who is making 17000
select * from EMPLOYEES
where SALARY = 17000;


-- make it dynamic
select * from EMPLOYEES -- 1st query
where salary = (select max(SALARY) from EMPLOYEES where salary < --2nd query
                                                                 (select max(SALARY) from EMPLOYEES) );--3rd query

--TASK: Display all information who is getting more than average ?
--find average salary
select round(avg(SALARY)) from EMPLOYEES; -- 6462

select * from EMPLOYEES
where SALARY > 6462;

--make it dynamic
select * from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);


