select * from EMPLOYEES;

--Task: how many locations we have for each country?
-- order them based country_id asc
-- hint: each represent most of the time -> group by
select * from LOCATIONS; -- to check what we have related to country

select COUNTRY_ID , count(*) as number_of_locations
from LOCATIONS
group by COUNTRY_ID
order by 2 desc;

/*
 we have in country_id column 14 countries and we grouped them by id
 and we count how many locations we have in each country_id
 and store them in the number of locations column

 country_id   number_of_locations
   US,                  4
   UK,                  3
   CA,                  2
   IT,                  2
   JP,                  2
   CH,                  2
   BR,                  1

 */

select COUNTRY_ID , count(*) as number_of_locations
from LOCATIONS
group by COUNTRY_ID
having count(*) > 2;
/*
  country_id   number_of_locations
   US,                  4
   UK,                  3
 */


--what if I want to see only US,UK and CA

select COUNTRY_ID , count(*) as number_of_locations
from LOCATIONS
where COUNTRY_ID in ('US', 'UK', 'CA')
group by COUNTRY_ID;

/*
 country_id   number_of_locations
   CA,                  2
   UK,                  3
   US,                  4
 */


--display where location count is bigger than 2
SELECT COUNTRY_ID,COUNT(*)
FROM LOCATIONS
WHERE COUNTRY_ID IN('US','UK','CA')
GROUP BY COUNTRY_ID
HAVING count(*)>2
ORDER BY COUNTRY_ID DESC;

--TASK2: Display all employees salary in following format as column name Employees_salary
--Ex:
-- Steven makes 24000
-- Neena makes 17000

select concat(FIRST_NAME, ' makes '), SALARY as Employees_salary
from EMPLOYEES;

--or other solution

select FIRST_NAME|| ' makes ' || SALARY as Employees_salary
from EMPLOYEES