CREATE DATABASE SQL_09_Homework;
DROP TABLE departments CASCADE;
DROP TABLE dept_emp CASCADE;
DROP TABLE titles CASCADE;
DROP TABLE dept_manager CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE salaries CASCADE;

SELECT CURRENT_DATABASE();
--CRRATE SCHEMA FOR ALL TABLES
-- department table
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);
-- copy the content of departments.csv
COPY departments
   FROM '/Users/jsacharz/Desktop/09-SQL-Homework/data/departments.csv'
   WITH DELIMITER AS ',' CSV HEADER;

-- SELECT *
-- FROM departments;

-- create dept_emp table  
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
COPY dept_emp
   FROM '/Users/jsacharz/Desktop/09-SQL-Homework/data/dept_emp.csv'
   WITH DELIMITER AS ',' CSV HEADER;


CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no)
);
COPY dept_manager
   FROM '/Users/jsacharz/Desktop/09-SQL-Homework/data/dept_manager.csv'
   WITH DELIMITER AS ',' CSV HEADER;
   
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

COPY titles
   FROM '/Users/jsacharz/Desktop/09-SQL-Homework/data/titles.csv'
   WITH DELIMITER AS ',' CSV HEADER;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);
COPY employees
   FROM '/Users/jsacharz/Desktop/09-SQL-Homework/data/employees.csv'
   WITH DELIMITER AS ',' CSV HEADER;
   
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
	);
COPY salaries
   FROM '/Users/jsacharz/Desktop/09-SQL-Homework/data/salaries.csv'
   WITH DELIMITER AS ',' CSV HEADER;
   
