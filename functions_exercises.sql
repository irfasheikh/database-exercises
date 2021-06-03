--combine first and last names for employees whos name start and end with e

SELECT last_name FROM employees WHERE last_name LIKE 'E%'
OR WHERE last_name LIKE '%E'

   -- Find all employees born on Christmas

   SELECT * FROM employees WHERE month(birth_date) =12 and day(birth_date) = 25;

SELECT * FROM employees
WHERE year(hire_date)