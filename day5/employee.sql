show databases;
create database Mindsprint;
use Mindsprint;

create table employee( id int primary key,
name varchar(100),
department varchar(100),
salary decimal(10, 2)
);

describe employee;

alter table employee
add column position varchar(100);

insert into employee values (1, "Alex", "IT", 56763, "Jr.Developer");

select * from employee;

insert into employee (id, position, department, salary, name)
values(2, "Alice", "IT", 6579, "Sr.Developer");

UPDATE employee
SET salary = 7000
WHERE id = 2;

DROP TABLE employee;

create table employees(id int primary key auto_increment,
name varchar(100), position varchar(100), department varchar(100), salary decimal(10, 2)
);

describe employees;

INSERT INTO employees (name, position, department, salary) VALUES
('John Doe', 'Manager', 'Sales', 75000.00),
('Jane Smith', 'Developer', 'IT', 65000.00),
('Emily Johnson', 'Analyst', 'Finance', 55000.00),
('Michael Brown', 'Designer', 'Marketing', 60000.00),
('David Blue', 'Accountant', 'Finance', 58000.00),
('Eve Red', 'Marketing Coordinator', 'Marketing', 61000.00);

select * from employees;

select 1 + 1 as 'result';

SELECT CONCAT(name, ' - ', position) AS employee_info FROM employees;

SELECT NOW() AS current_datetime;

SELECT UPPER(name) AS uppercase_name FROM employees;

SELECT LOWER(position) AS lowercase_position FROM employees;

SELECT * FROM employees WHERE salary = 61000.00;

SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000;

SELECT * FROM employees WHERE department = 'IT';

SELECT * FROM employees ORDER BY salary ASC

SELECT * FROM employees ORDER BY name DESC;

SELECT * FROM employeeS ORDER BY department ASC, salary DESC;

SELECT * FROM employees ORDER BY position ASC, name ASC;

select * FROM employees ORDER BY salary DESC, department ASC, name DESC;

SELECT * from employees WHERE department = 'Sales' OR department = 'Marketing';

SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

SELECT DISTINCT department FROM employees;

SELECT DISTINCT department, position FROM employees;

SELECT * FROM employees WHERE department NOT IN ('IT', 'Finance');

SELECT * FROM employees WHERE department IN ('IT', 'Finance');

SELECT * FROM employees WHERE name LIKE 'J%';

SELECT * FROM employees WHERE name LIKE '%ohn%';

SELECT * FROM employees WHERE name LIKE '%e';

SELECT * FROM employees WHERE position IS NULL;

SELECT * FROM employees WHERE position IS NOT NULL;

