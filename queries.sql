--List the following details of each employee: employee number, last name, first name, gender, and salary
SELECT employees.employee_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees INNER JOIN salaries ON 
employees.employee_no=salaries.employee_no;


--List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates
SELECT deptmanagers.dept_no, departments.dept_name, deptmanagers.employee_no, employees.last_name, employees.first_name, deptmanagers.start_date, deptmanagers.end_date
FROM deptmanagers LEFT JOIN departments ON
deptmanagers.dept_no=departments.dept_no INNER JOIN employees ON
deptmanagers.employee_no=employees.employee_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT deptemployees.employee_no, employees.last_name, employees.first_name, departments.dept_name
FROM deptemployees LEFT JOIN departments ON
deptemployees.dept_no=departments.dept_no INNER JOIN employees ON
deptemployees.employee_no=employees.employee_no;


--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT deptemployees.employee_no, employees.last_name, employees.first_name, departments.dept_name
FROM deptemployees LEFT JOIN departments ON
deptemployees.dept_no=departments.dept_no INNER JOIN employees ON
deptemployees.employee_no=employees.employee_no
WHERE dept_name = 'Sales'


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT deptemployees.employee_no, employees.last_name, employees.first_name, departments.dept_name
FROM deptemployees LEFT JOIN departments ON
deptemployees.dept_no=departments.dept_no INNER JOIN employees ON
deptemployees.employee_no=employees.employee_no
WHERE dept_name IN ('Sales','Development')


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
GROUP BY last_name
ORDER BY "name count" DESC;