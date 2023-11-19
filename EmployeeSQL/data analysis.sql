--View tables while completing queries for analysis below
select * from "Employees";
select * from "Titles";
select * from "Departments";
select * from "Dept_emp";
select * from "Dept_manager";
select * from "Salaries";

--List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" as e
	join "Salaries" as s
	on (s.emp_no = e.emp_no)
	group by e.emp_no, s.salary;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date
from "Employees"
where hire_date between '01/01/1986' and '12/31/1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select x.dept_no, d.dept_name, x.emp_no, e.last_name, e.first_name
from "Dept_manager" as x
	join "Departments" as d
	on (x.dept_no = d.dept_no)
		join "Employees" as e
		on (x.emp_no = e.emp_no)
		group by x.dept_no, d.dept_name, x.emp_no, e.last_name, e.first_name;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select d.dept_no, d.emp_no, e.last_name, e.first_name, x.dept_name
from "Dept_emp" as d
	join "Departments" as x
	on (x.dept_no = d.dept_no)
		join "Employees" as e
		on (d.emp_no = e.emp_no)
		group by d.dept_no, d.emp_no, e.last_name, e.first_name, x.dept_name;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select e.first_name, e.last_name, e.sex
from "Employees" as e
where
	e.first_name = 'Hercules'
	and e.last_name like 'B%'
	group by e.first_name, e.last_name, e.sex;

--List each employee in the Sales department, including their employee number, last name, and first name.
select d.dept_name, x.emp_no, x.dept_no, e.last_name, e.first_name
from "Employees" as e
	join "Dept_emp" as x
	on (e.emp_no = x.emp_no)
		join "Departments" as d
		on (x.dept_no = d.dept_no)
			where d.dept_no = 'd007'
			group by d.dept_name, x.emp_no, x.dept_no, e.last_name, e.first_name;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select d.dept_name, x.emp_no, x.dept_no, e.last_name, e.first_name
from "Employees" as e
	join "Dept_emp" as x
	on (e.emp_no = x.emp_no)
		join "Departments" as d
		on (x.dept_no = d.dept_no)
			where d.dept_no = 'd007' or d.dept_no = 'd005'
			group by d.dept_name, x.emp_no, x.dept_no, e.last_name, e.first_name;
			
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as count
from "Employees"
group by last_name
order by count desc;
