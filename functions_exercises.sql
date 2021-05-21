--combine first and last names for employees whos name start and end with e

SELECT last_name FROM employees WHERE last_name LIKE 'E%'
OR WHERE last_name LIKE '%E'