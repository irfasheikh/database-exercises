USE employees;

SELECT DISTINCT title FROM titles;


--list the first 10 distinct last name sorted in descending order
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

--get the top 5 salaries and display employees with 43624, 43624, 254466, 47978, 253939

SELECT
