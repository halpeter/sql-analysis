# sql-challenge

## Background
In this project, I was tasked with completing a research project on employees of a corporation from the 1980s and 1990s. All that remain of the database of employees from that period were six CSV files. For this project, I designed tables to hold the data in the CSVs, imported the CSVs into a SQL database and answered questions about the data.

### Data Modeling
First, I inspected the CSVs and sketched out an ERD of the tables using http://www.quickdatabasediagrams.com. 

### Data Engineering
Next, I used the information I had to create a table schema for each of the six CSV files. I ensured that I used specific data types, primary keys and foreign keys to properly set up the tables for future analysis. Once this was all set up, I imported the CSV files into the corresponding SQL table, making sure to import them in the order that they were created.

### Data Analysis

Once I had a complete database, I queried for the following information:

1. A list of the following details of each employee: employee number, last name, first name, sex, and salary.

2. A list of first name, last name, and hire date for employees who were hired in 1986.

3. A list of the managers of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. A list of the department of each employee with the following information: employee number, last name, first name, and department name.

5. A list of first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. A list of all employees in the Sales department, including their employee number, last name, first name, and department name.

7. A list of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, a list of the frequency count of employee last names, i.e., how many employees share each last name.