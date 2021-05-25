USE employees_db;

--#1
--same hire date as 101010
SELECT hire_date
FROM employees;
WHERE emp_no = 101010;
--now using subquery
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date FROM employees WHERE emp_no = 101010
    );

--in is an or statement


--#2
--find titles with first name Aamod
SELECT title
FROM titles
WHERE emp_no IN
      (select emp_no from employees where first_name = 'Aamod');


--#3
--find all managers that are female
SELECT first_name, last_name from employees
WHERE gender = 'F'
  AND emp_no
in (SELECT dept_no FROM dept_manager where to_date > current_date); -- this is saying they're currently managers

 --another way
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no --Only current department managers
FROM dept_manager
WHERE to_date = '9999-01-01'
    ) AND gender = 'F';



--BONUSES

--BONUS # 1
--all department names that currently have female managers
SELECT dept_no
FROM
