--Data Analysis of imported tables

--List of employees including name, sex, salary, and employee number
select employees.last_name, employees.first_name, employees.sex, salaries.salary, employees.emp_no
from employees
join salaries
on salaries.emp_no = employees.emp_no;

--List of employees who were hired in 1986
select employees.first_name, employees.last_name, employees.hire_date
from employees
where extract(year from hire_date)= 1986
order by hire_date nulls last;

--List of managers for each department
select department_mangs.dept_no, departments.dept_name, department_mangs.emp_no, employees.last_name, employees.first_name
from department_mangs
join departments
on department_mangs.dept_no = departments.dept_no
join employees
on department_mangs.emp_no = employees.emp_no;

--List of departments for each employee 
select departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
from department_emps
join departments
on department_emps.dept_no = departments.dept_no
join employees
on department_emps.emp_no = employees.emp_no
order by departments.dept_name nulls last;

--List of employees whose first name is Hercules and last names begins with B
select first_name, last_name, sex
from employees
where first_name = 'Hercules%' and last_name like 'B%';

--List of employees in sales department



