select * from EMPLOYEES;
/*
  it limits rows based on provided number
 */
SELECT * FROM EMPLOYEES
WHERE ROWNUM<11;


--display all information from employees who is getting first 5 highest salary
        --BAD PRACTICE
        --IT is getting data before order them based on salary
        --and cut the list from line 6 then it tries to order them between first 5 rows
        --that is why we are getting wrong list
SELECT * from EMPLOYEES
where rownum <6
order by SALARY desc;

--this displays all the information from employees by ordering salary descending order
select * from EMPLOYEES order by SALARY desc;

--correct answer
--using ordered by salary desc employees table as an input,
-- after FROM keyword then cutting first 5 with rownum
select *
from (select * from EMPLOYEES order by SALARY desc)
where rownum <6;

--display all information who is getting 5th highest salary
--find all salary (without duplicate)
SELECT  DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY DESC;

--first five highest salary
SELECT SALARY FROM (SELECT DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY DESC)
WHERE ROWNUM <6;
/*   SALARY
    24000.00
    17000.00
    14000.00
    13500.00
    13000.00 -> this is the fifth higher
 */

--if we say min(salary) we know that in this list the last one has min salary from the five highest salary
SELECT MIN(SALARY) FROM (SELECT DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY DESC)
WHERE ROWNUM <6; --13000

--who is making 5th highest salary ?
SELECT * FROM EMPLOYEES
WHERE SALARY = 13000;

--dynamic way of finding 5th salary
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM (SELECT DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY DESC)
                WHERE ROWNUM <6);
