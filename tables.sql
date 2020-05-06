--CREATING TABLES
CREATE TABLE employees(
	employee_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender VARCHAR(255),
	hire_date DATE
);

CREATE TABLE deptemployees(
	employee_no INT NOT NULL,
	dept_no VARCHAR(255) NOT NULL,
	start_date DATE,
	end_date DATE
	PRIMARY KEY (employee_no, dept_no)
);

CREATE TABLE deptmanageres(
	dept_no VARCHAR(255) NOT NULL,
	employee_no INT NOT NULL,
	start_date DATE,
	end_date DATE
	PRIMARY KEY (dept_no, employee_no)
);

CREATE TABLE titles(
	employee_no INT NOT NULL,
	title VARCHAR(255) NOT NULL,
	start_date DATE,
	end_date DATE,
	PRIMARY KEY(employee_no, title, start_date)
);

CREATE TABLE salaries(
	employee_no INT PRIMARY KEY,
	salary INT,
	start_date DATE,
	end_date DATE
);

CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY,
	dept_name VARCHAR(255)
);