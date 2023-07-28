select * from EMPLOYEES;


/*
    ORDERBY
        - It allows us to sort data based on provided column
        -AS a Default it will order the result ASCENDING ORDER(A-Z,0-9)
        -IF you want to sort it DESCENDING order we need to specify right after column name
 */

--display all employees based on salary in asc order
select * from EMPLOYEES
order by SALARY;

--same query
select * from EMPLOYEES
order by SALARY asc;

--display all employees based on salary in desc order

select * from EMPLOYEES
order by SALARY desc ;

--display all the employees based on their firstname desc
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME DESC;

--display all info where emp id is less than 120 and order them based on salary desc
select  * from EMPLOYEES
where EMPLOYEE_ID < 120
order by SALARY desc;

--display all information from employees and order them based on firstname asc and lastname desc

select * from EMPLOYEES
order by FIRST_NAME asc, LAST_NAME desc;
