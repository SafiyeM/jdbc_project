SELECT *
FROM EMPLOYEES;

/*
    1.Column aliases --> it is temporary name to show in display

    2.Table aliases which we will learn later
        Employees --> E
 */

--the query below second column name is "ROUND(AVG(SALARY))" which is not nice.
SELECT DEPARTMENT_ID, ROUND(AVG(SALARY)) as "Average salary"
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL --to remove null department id from the result
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 6000
ORDER BY 2 ASC;

--or without "" -> column name: as Average_salary (it works also without as) ->displays all uppercase
SELECT DEPARTMENT_ID, ROUND(AVG(SALARY)) as Average_salary
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL --to remove null department id from the result
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 6000
ORDER BY 2 ASC;


--manager is asking display annual salary for all employees as annual_salary
select FIRST_NAME, SALARY * 12 as annual_salary
from EMPLOYEES;


--NOTE --> we are just displaying and nothing will change it DB

---------------------STRING MANIPULATION---------------------
/*
        CONCAT
            --Java --> + first_name+" "+last_name
            --SQL --> || first_name||' '||last_name
 */
--I want to get fullName column where we have firstname+' '+lastname

select FIRST_NAME || ' ' || LAST_NAME as full_name
from EMPLOYEES;


--add @cydeo.com to all the emails in the employee table.
select EMAIL || '@cydeo.com'
from EMPLOYEES;

-- the same result also with concat()
select concat(EMAIL, '@cydeo.com') as email
from EMPLOYEES;
/*
 ABANDA@cydeo.com
 ABULL@cydeo.com
 */

--lowercase
select lower(EMAIL || '@cydeo.com') as email
from EMPLOYEES;
/*
 abanda@cydeo.com
 abull@cydeo.com
*/

--uppercase
select upper(email || '@cydeo.com') as email
from EMPLOYEES;

/*
 ABANDA@CYDEO.COM
 ABULL@CYDEO.COM
 */

--INITCAP
-- it makes first letter uppercase
select initcap(email || '@cydeo.com') as email
from EMPLOYEES;
/*
 Abanda@Cydeo.Com
 Abull@Cydeo.Com
*/

select email, length(email) as email_length
from EMPLOYEES;
/*
  email         email_length
 ABANDA,            16
 ABULL,             15

 */


--display all employees where firstname length equals 6

select FIRST_NAME
from EMPLOYEES
where length(FIRST_NAME) = 6;
/*
 Sundar
 Shelli
 Alexis
 Gerald
 */

--another solution -> the same result
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '______';
/*
 Sundar
 Shelli
 Alexis
 Gerald
 */

--How many first name?
select count(*)
from EMPLOYEES
where FIRST_NAME like '______';

--display initial from firstname and lastname --> S.K.  ---- N.K.

--SUBSTR(columName,beginningIndex,numberOfChar)
--from first_name column 0(first character) 1(number of character)
select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME, 0,1) || '.' as initials from EMPLOYEES;
/*
 E.A.
 S.A.
 M.A.
*/
-- this give also the same result if we change index to 1
select substr(FIRST_NAME,1,1) || '.' || substr(LAST_NAME, 1,1) || '.' as initials from EMPLOYEES;

--  if we add minus(-), it starts from the end of the name and gets 3 letters
select FIRST_NAME, substr(FIRST_NAME,-3,3) as start_from_end from EMPLOYEES;
/*
 first_name     start_from_end
 Ellen,             len
 Sundar,            dar
 Mozhe,             zhe
 */

select FIRST_NAME, substr(FIRST_NAME,-4) as last_four_letter from EMPLOYEES;

/*
first_name       last_four_letter
 Ellen,              llen
 Sundar,             ndar
 Mozhe,              ozhe
 */


/*
   -if beginning index is 0, it is treated as 1
   -if the beginning index negative, it will start from backwards
   -if we don't specify number of char it will work till the end
*/