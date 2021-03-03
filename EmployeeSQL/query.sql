--DATA ENGINEERING 
--Create table and import departments data
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY, 
	dept_name VARCHAR);
	
SELECT * FROM departments;

--Create table and import dept_emp data
CREATE TABLE dept_emp (
	emp_no INT PRIMARY KEY, 
	dept_no VARCHAR);
	
SELECT * FROM dept_emp;

--Create table and import dept_manager data
CREATE TABLE dept_manager (
	dept_no VARCHAR PRIMARY KEY,
	emp_no INT);
	
SELECT * FROM dept_manager;

--Create table and import employees data
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR,
	hire_date DATE);
	
SELECT * FROM employees;

--Create table and import salaries data
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT);
	
SELECT * FROM salaries;

--Create table and import titles data
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR);
	
SELECT * FROM titles;

--DATA ANALYSIS
--1. List the following details of each employee: employee number, 
--last name, first name, sex, and salary.
SELECT * FROM employees;
SELECT * FROM salaries;

--join employees and salaries tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

--2. List first name, last name, and hire date for employees who were 
--hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1996-01-01' and '1996-12-31';


--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
	JOIN dept_manager AS dm
	ON (d.dept_no=dm.dept_no)
		JOIN employees as e
		ON (dm.emp_no=e.emp_no);

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON (e.emp_no=de.emp_no)
		JOIN departments AS d
		ON (de.dept_no=d.dept_no);

--5. List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee 
--number, last name, first name, and department name.
SELECT dept_no, dept_name
FROM departments
WHERE dept_name='Sales';
SELECT emp_no, dept_no
FROM dept_emp
WHERE dept_no='d007';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
    JOIN dept_emp AS de
    ON (e.emp_no=de.emp_no)
        JOIN departments as d
        ON (de.dept_no=d.dept_no)
        WHERE dept_name='Sales';


--7. List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
    JOIN dept_emp AS de
    ON (e.emp_no=de.emp_no)
        JOIN departments as d
        ON (de.dept_no=d.dept_no)
        WHERE dept_name='Sales'
        OR dept_name='Development';

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Last Name Counts"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Counts" DESC;
