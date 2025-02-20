SHOW databases;
create database student;
use student;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    major VARCHAR(100),
    gpa DECIMAL(3, 2),
    enrollment_date DATE
);


INSERT INTO Students (student_id, name, age, major, gpa, enrollment_date)
VALUES 
(101, 'Alice Johnson', 20, 'Computer Science', 3.8, '2023-01-15'),
(102, 'Bob Smith', 22, 'Mathematics', 3.4, '2023-03-22'),
(103, 'Carol Lee', 19, 'Biology', 3.2, '2023-04-10'),
(104, 'David Brown', 21, 'Physics', 2.9, '2022-11-05'),
(105, 'Eve Davis', 23, 'Computer Science', 3.6, '2022-08-20'),
(106, 'Frank Miller', 20, 'Mathematics', 3.1, '2023-02-28');

SELECT * FROM Students WHERE major = 'Computer Science';

SELECT * FROM Students WHERE gpa > 3.5 OR major = 'Mathematics';

SELECT * FROM Students WHERE age > 20 AND gpa < 3.0;

SELECT * FROM Students WHERE enrollment_date BETWEEN '2023-01-01' AND '2023-12-31';

SELECT DISTINCT major FROM Students;

SELECT * FROM Students WHERE student_id IN (101, 102, 103);

SELECT * FROM Students WHERE gpa IS NULL;

SELECT * FROM Students WHERE name IS NOT NULL;

SELECT * FROM Students WHERE age IN (18, 22);

SELECT * FROM Students WHERE age < 19 OR gpa > 3.8;

SELECT * FROM Students WHERE gpa BETWEEN 2.5 AND 3.5 AND major = 'Biology';

SELECT * FROM Students ORDER BY name ASC, gpa DESC;




create database sample;
use sample;

CREATE TABLE departments ( 
id INT PRIMARY KEY, 
name VARCHAR(100) 
NOT NULL);

INSERT INTO departments (id, name) 
VALUES 
(1, 'Sales'), 
(2, 'R&D'), 
(3, 'Marketing'), 
(4, 'Finance'), 
(5, 'Human Resources');

CREATE TABLE employees ( 
id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
position VARCHAR(100) NOT NULL, 
salary DECIMAL(10, 2), 
department_id INT, 
FOREIGN KEY (department_id) 
REFERENCES departments(id) 
);

INSERT INTO employees 
(id, name, position, salary, department_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);

SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;

SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id;

SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;

SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id
UNION
SELECT employees.id, employees.name, employees.position, 
employees.salary, departments.name AS department
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;

SELECT employees.id AS employee_id, employees.name AS employee_name, 
departments.id AS department_id, departments.name AS department_name
FROM employees
CROSS JOIN departments;

SELECT departments.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN departments ON employees.department_id = departments.id
GROUP BY departments.name;

SELECT departments.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN departments ON employees.department_id = departments.id
GROUP BY departments.name
HAVING SUM(employees.salary) > 100000;

-- List





SELECT departments.name AS department, COUNT(employees.id) AS 
employee_count
FROM employees
JOIN departments ON employees.department_id = departments.id
GROUP BY departments.name
HAVING COUNT(employees.id) > 2;



































SELECT departments.name AS department, SUM(employees.salary) AS total_salary
FROM employees
JOIN departments ON employees.department_id = departments.id
GROUP BY departments.name WITH ROLLUP;

CREATE TABLE employees_archive (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);
INSERT INTO employees_archive (id, name, position, salary, department_id) VALUES
(209, 'George White', 'Consultant', 70000.00, 1),
(208, 'Hannah Black', 'Analyst', 50000.00, 2);

SELECT id, name, position, salary, department_id
FROM employees
UNION
SELECT id, name, position, salary, department_id
FROM employees_archive;

SELECT id, name, position, salary, department_id
FROM employees
UNION ALL
SELECT id, name, position, salary, department_id
FROM employees_archive;

SELECT id, name, position, salary, department_id
FROM employees
EXCEPT
SELECT id, name, position, salary, department_id
FROM employees_archive;

SELECT id, name, position, salary, department_id
FROM employees
INTERSECT
SELECT id, name, position, salary, department_id
FROM employees_archive;




drop table accounts;

CREATE TABLE Accounts (
 account_id VARCHAR(10) PRIMARY KEY,
 account_name VARCHAR(100),
 balance DECIMAL(10, 2)
);

INSERT INTO Accounts (account_id, account_name, balance) 
VALUES
('A001', 'Alice', 1000.00),
('A002', 'Bob', 1500.00),
('A003', 'Charlie', 2000.00);

BEGIN;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001';

UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A002';


COMMIT;

BEGIN;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A003';
ROLLBACK;

BEGIN;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001';

SAVEPOINT sp1;

UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A002';

ROLLBACK TO sp1;

COMMIT;




