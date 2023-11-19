# 09-sql-challenge

For this project the task was to design the tables to hold the data from CSV files during the period of 1980's and 1990's.  From the data supplied I was able to perform data modeling, data engineering and data analysis.  A Entity Relationship Diagram of an Employee Database was created and utilized create the schema in Postgres.  With the schema created all of the csv's were imported into each table.  The created tables and importing of csv's was executed in a specific order due to primary, composite and foreign keys.

After the schema was created and the data was imported, I was able to perform the following analysis through queries.

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

I did reach out to askbcs and found out from Angel Milla that the tables had to be created and imported in a specific order.
Also reached out to askbcs where Mohammad Kanawat reminded me about the need for composite keys.

I was able to research and get the data to import in the appropriate order without given the direct answer.
