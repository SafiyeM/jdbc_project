--PART 2
-- 1. Display full addresses from locations table in a single column
select STREET_ADDRESS|| ' ' || ' ' ||POSTAL_CODE|| ' ' ||CITY||' ' || STATE_PROVINCE|| ' ' ||COUNTRY_ID as full_address
from LOCATIONS;

-- 2. Display all information of the employee who has the minimum salary in employees table
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
order by SALARY desc ;

SELECT * FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

-- 3. Display the second minimum salary from the employees
select min(SALARY) from EMPLOYEES
where SALARY = ( select min(SALARY) from EMPLOYEES where SALARY >(select min(SALARY) from EMPLOYEES) );

-- 4. Display all information of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY in ( select min(SALARY) from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) );


-- 5. List all the employees who are making above the average salary;


-- 6. List all the employees who are making less than the average salary
-- 7. Display manager name of 'Neena'
-- 8. Find the 3rd maximum salary from the employees table (do not include duplicates)
-- 9. Find the 5th maximum salary from the employees table (do not include duplicates)
-- 10. Find the 7th maximum salary from the employees table (do not include duplicates)
-- 11. Find the 10th maximum salary from the employees table (do not include duplicates)
-- 12. Find the 3rd minimum salary from the employees table (do not include duplicates)
-- 13. Find the 5th minimum salary from the employees table (do not include duplicates)