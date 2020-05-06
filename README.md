# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](figures/sql.png)


## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

1. Data Modeling: Inspect the CSVs and sketch a database design for the tables

2. Data Engineering: Create a table schema for each of the six CSV tables. Create the tables in PostgreSQL.

3. Data Analysis: Answer the provided research questions.

**Tools Used:** PostgreSQL, Python, MatplotLib, Excel


#### Data Modeling

![DB-design](figures/dbd.png)

Database ERD diagram was created using .[http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com)
The modeling process is an intuitive process that helps us gain a better understanding of our database. In this step we identify primary and foreign keys, define datatypes, and determine relationships. For some tables, like with the *Employees* and *Departments* tables, this is simple since each record is unique and has a numeric ID. For other it is more nuanced and requires the creation of composite keys. 


#### Data Engineering

With our diagram complete we can move on the creating the tables in PostgreSQL. In the user interface, we design queries that follow a general structure: 
```
CREATE TABLE employees(
	employee_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender VARCHAR(255),
	hire_date DATE
);
```
With our tables created we can import the csv data.

#### Data Analysis

Research Questions:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

* If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://martin-thoma.com/configuration-files-in-python/](https://martin-thoma.com/configuration-files-in-python/) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

### Copyright

Trilogy Education Services © 2019. All Rights Reserved.
