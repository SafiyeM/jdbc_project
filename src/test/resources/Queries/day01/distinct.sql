-- SELECT * FROM EMPLOYEES;

/*
 it shows different values from query result based provided column
 */
--it returns 107 results
SELECT FIRST_NAME from EMPLOYEES;

--it removed duplicate and returned 91 results
select distinct FIRST_NAME from EMPLOYEES;

-- it will check each row to filter different columns --> * --> all columns
select distinct * from EMPLOYEES;

select * from JOBS;
select JOB_ID from JOBS;
--since primary key can not be duplicate it gives the same result with distinct
select distinct JOB_ID from JOBS;
