USE join_test_db;

--write a query that shows each department along with the name of the current manager for that department.
SELECT dpt.dept_name AS 'Department Name', CONCAT( e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS dpt
              ON dm.dept_no = dpt.dept_no
WHERE to_date > CURRENT_DATE;

--Find the name of all departments currently managed by women.
SELECT dpt.dept_