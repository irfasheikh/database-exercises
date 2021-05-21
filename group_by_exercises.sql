USE employees;

--show titles table
SELECT DISTINCT title FROM titles;

--find just unique last names that start and end 'E' ...find just unique by using groupby

SELECT last_name FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' GROUP BY last_name;

--find unique combinations fo first and last names where last name ends with 'E'

SELECT first_name, last_name FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'E%' GROUP BY first_name, last_name;

--unique last names with 'q' not 'qu'

SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

-- add count() tp results and use order by
SELECT last_name, COUNT(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

-- use count(*) and GROUP BY to find # employees for each gender (Irena, Vidya, Maya)

SELECT gender, COUNT(gender)
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya')
GROUP BY gender;
