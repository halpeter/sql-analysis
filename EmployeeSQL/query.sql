--DATA ENGINEERING 
--Create table and import departments data
CREATE TABLE departments (
	dept_no VARCHAR, 
	dept_name VARCHAR);
	
SELECT * FROM departments;

--Create table and import dept_emp data
CREATE TABLE dept_emp (
	emp_no INT, 
	dept_no VARCHAR);
	
SELECT * FROM dept_emp;

--Create table and import dept_manager data
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT);
	
SELECT * FROM dept_manager;

--Create table and import employees data
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR,
	hire_date DATE);
	
SELECT * FROM employees;

--Create table and import salaries data
CREATE TABLE salaries (
	emp_no INT,
	salary INT);
	
SELECT * FROM salaries;

--Create table and import titles data
CREATE TABLE titles (
	title_id VARCHAR,
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
WHERE hire_date > 1995-12-31
	AND hire_date < 1997-01-01;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

--5. List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."

--6. List all employees in the Sales department, including their employee 
--number, last name, first name, and department name.

--7. List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
