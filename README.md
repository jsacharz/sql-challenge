# sql_challenge: Unit 9 Homework: Employee Database

## Background

It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

## Instructions

This assignment is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modelling

Inspect the CSVs and sketch out an ERD of the tables.

An Entity Relationship Diagram was created to assist in visualising the data tables.

Data Engineering

Use the provided information to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.


## Data Analysis

Once you have a complete database, perform these steps:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Bonus (Optional)

As you examine the data, you begin to suspect that the dataset is fake. Maybe your boss gave you spurious data in order to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss.

On the content for this repository:
- The ERD image and the schema used to prepare the ERD can be found under ERD.png
- The analysis with sql files (table_schema.sql and queries.sql) can be found in the data folder which also contains all csv files. 
- The bonus part: bonus.ipynb
- The grpahs prepared for the bonus part can be found under: salary_histogram.png and salary_titiles_bargraph.png.
