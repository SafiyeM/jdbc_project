select * from EMPLOYEES;

/*Part 1
Select - Distinct - Where - Order By - Like -
Group By - Having
 */

-- 1. List all the employees first and last name with their salary in employees table
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES;

-- 2. How many employees have salary less than 5000?
select SALARY, count(*)
from EMPLOYEES
where SALARY < 5000
group by SALARY;

-- 3. How many employees have salary between 6000 and 7000?

select salary, count(*)
from EMPLOYEES
where SALARY between  6000 and 7000
group by salary;

-- 4. List all the different region_ids in countries table
select * from COUNTRIES;

select distinct REGION_ID from COUNTRIES;

-- 5. Display the salary of the employee Grant Douglas (lastName: Grant, firstName: Douglas)

select SALARY
from EMPLOYEES
where FIRST_NAME = 'Douglas' and LAST_NAME= 'Grant';

--6. Display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
select * from DEPARTMENTS
where DEPARTMENT_NAME in ('IT', 'Public Relations', 'Sales', 'Executive');

-- 7. Display the maximum salary in employees table
select max(SALARY) from EMPLOYEES;

-- 8. Display the the minimum salary in employees table
select min(SALARY) from EMPLOYEES;

-- 9. Display the average salary of the employees;
select round(avg(salary)) from EMPLOYEES;

-- 10. Count the total numbers of the departments in departs table
select count(*)
from DEPARTMENTS;

-- 11. Sort the start_date in ascending order in job_history's table
select START_DATE from JOB_HISTORY
order by START_DATE;


-- 12. Sort the start_date in descending order in job_history's table
select START_DATE from JOB_HISTORY
order by START_DATE desc;

-- 13. Display all records whose last name contains 2 lowercase 'a's
select LAST_NAME
from EMPLOYEES
where LAST_NAME like '%a%a%' AND LAST_NAME not like '%a%a%a%';

-- 14. Display all the employees whose first name starts with ‘A'
select *
from EMPLOYEES
where FIRST_NAME like 'A%';


-- 15. Display all the employees whose job_ID contains ‘IT'
select *
from EMPLOYEES
where JOB_ID like '%IT%';


-- 16. Display all unique job_id that end with CLERK in employee table
select JOB_ID from EMPLOYEES;

select distinct JOB_ID
from EMPLOYEES
where JOB_ID like '%CLERK';

-- 17.Display all employees first name starts with A and have exactly 4 characters
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A___';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A%' and FIRST_NAME like '____';

-- 18. Display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID in (50, 80, 100);

-- 19. Display all employees who does not work in any one of these department id —> 90, 60, 100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID not in (90, 60, 100, 130, 120);


-- 20. divide employees into groups by using their job id
        -- 1 display the maximum salaries in each groups
select JOB_ID,max(SALARY)
from EMPLOYEES
group by JOB_ID;

        -- 2 display the minimum salaries in each groups
select JOB_ID, min(salary)
from EMPLOYEES
group by JOB_ID;

        -- 3 display the average salary of each group
select JOB_ID, avg(salary)
from EMPLOYEES
group by JOB_ID;

        -- 4 how many employees are there in each group that have minimum salary of 5000 ?
SELECT job_id, COUNT(*) AS num_employees_with_min_salary
FROM employees
where salary >= 5000
GROUP BY job_id;


        -- 5 display the total budgets of each groups
select JOB_ID, sum(salary) as total_budget
from EMPLOYEES
group by JOB_ID;


-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID, avg(SALARY) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP','FI_ACCOUNT', 'AD_VP')
group by JOB_ID;

-- 22.Display max salary for each department
select max(SALARY), DEPARTMENT_ID
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

-- 23. Display total salary for each department except department_id 50, where total salary more than 30000
select DEPARTMENT_ID, sum(SALARY)
from EMPLOYEES
where DEPARTMENT_ID  != 50 -- not in 50 -- <>50
group by DEPARTMENT_ID
having sum(salary) > 30000;

