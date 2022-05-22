drop table if exists departments; 
create table departments(
	dept_no VARCHAR (30) NOT NULL, 
	dept_name VARCHAR(300) Not Null, 
	CONSTRAINT pk_departments PRIMARY Key (dept_no)
);

select * from departments;

drop table if exists department_emps;
CREATE TABLE department_emps(
	emp_no INTEGER Not Null, 
	dept_no VARCHAR(30) Not Null, 
	Constraint pk_department_emps Primary Key (emp_no, dept_no)
);																																																																									DEPT_NO));

SELECT * FROM DEPARTMENT_EMPS;

drop table if exists department_mangs;
create table department_mangs(
	dept_no VARCHAR(30) Not Null,
	emp_no Integer Not Null, 
	constraint pk_department_mangs primary key (emp_no)
);

select * from department_mangs;

drop table if exists employees;
create table employees(
	emp_no Integer Not Null, 
	emp_title VARCHAR Not Null, 
	birth_date Date Not Null,
	first_name VARCHAR Not Null, 
	last_name VARCHAR Not Null, 
	sex VARCHAR Not Null, 
	hire_date Date Not Null, 
	constraint pk_employees primary key (emp_no)
);

select * from employees;

drop table if exists salaries;
create table salaries(
	emp_no Integer Not Null, 
	salary Integer Not Null,
	constraint pk_salaries primary key (emp_no)
);

select * from salaries;

drop table if exists titles;
create table titles(
	title_id VARCHAR Not Null,
	title VARCHAR Not Null,
	constraint pk_titles primary key (title_id)
);

select * from titles

