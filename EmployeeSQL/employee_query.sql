-- List emp_no, last, first, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no);

-- List first, last, hire date (1986)
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date LIKE '%1986';

-- List manager of dept, dept number, department name, manager emp_no, last, first
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no,
employees.first_name, employees.last_name
FROM dept_manager
JOIN employees
ON (dept_manager.emp_no = employees.emp_no)
JOIN departments
ON (dept_manager.dept_no = departments.dept_no);

-- List department of employees, emp_no, last, first, dept name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_employees
ON (employees.emp_no = dept_employees.emp_no)
JOIN departments
ON (dept_employees.dept_no = departments.dept_no);

-- List first (Hercules), last (starts with 'B'), sex
SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name LIKE 'B%';

--List all employees in sales, include emp_no, last, first, dept_name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments
JOIN 