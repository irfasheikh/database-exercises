USE employees;


--all employees with first name "irena, vidya, maya"
-- order by firstname
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

--order by first name and then last name
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC , last_name ASC;

--order by last name and then first name
SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC , first_name ASC;

--all employees whose last name starts with 'E'
--sort by employee numbers
SELECT * FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no;

-- all employees with 'q' in their last name
SELECT last_name FROM employees WHERE last_name LIKE '%q%';

--PART TWO
--use OR instead of IN
SELECT first_name FROM employees WHERE first_name = 'Irena'
                                    OR first_name = 'Vidya'
                                    OR first_name = 'Maya';

--add condition who are also male
SELECT first_name FROM employees WHERE first_name = 'Irena'
                                    OR first_name = 'Vidya'
                                    OR first_name = 'Maya'
        AND gender = 'M';

--all employees whose last name starts OR ends with E

SELECT


