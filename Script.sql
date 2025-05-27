create schema company_data;
create table company_data.employees(
employee_id INT primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(20),
department VARCHAR(50),
hire_date DATE,
salary DECIMAL (10,2)
);

create table company_data.products(
product_id INT primary key,
product_name VARCHAR(50),
category VARCHAR(50),
price DECIMAL(10,2),
stock Int
);

create table company_data.sales(
sale_id INT primary key,
product_id INT references company_data.products(product_id),
employee_id INT references company_data.employees(employee_id),
sale_date DATE,
quantity INT,
total DECIMAL(10,2)
);

insert into company_data.employees(employee_id, first_name,last_name, gender, department, hire_date,salary)
values
(1, 'John', 'Doe', 'Male', 'IT', '2018-05-01', 60000.00),
(2, 'Jane', 'Smith', 'Female', 'HR', '2019-06-15', 50000.00),
(3, 'Michael', 'Johnson', 'Male', 'Finance', '2017-03-10', 75000.00),
(4, 'Emily', 'Davis', 'Female', 'IT', '2020-11-20', 70000.00),
(5, 'Sarah', 'Brown', 'Female', 'Marketing', '2016-07-30', 45000.00),
(6, 'David', 'Wilson', 'Male', 'Sales', '2019-01-05', 55000.00),
(7, 'Chris', 'Taylor', 'Male', 'IT', '2022-02-25', 65000.00);

insert into company_data.products(product_id, product_name,category,price,stock)
values
(1, 'Laptop', 'Electronics', 1200.00, 30),
(2, 'Desk', 'Furniture', 300.00, 50),
(3, 'Chair', 'Furniture', 150.00, 200),
(4, 'Smartphone', 'Electronics', 800.00, 75),
(5, 'Monitor', 'Electronics', 250.00, 40),
(6, 'Bookshelf', 'Furniture', 100.00, 60),
(7, 'Printer', 'Electronics', 200.00, 25);

insert into company_data.sales(sale_id, product_id, employee_id, sale_date, quantity, total)
values
(1, 1, 1, '2021-01-15', 2, 2400.00),
(2, 2, 2, '2021-03-22', 1, 300.00),
(3, 3, 3, '2021-05-10', 4, 600.00),
(4, 4, 4, '2021-07-18', 3, 2400.00),
(5, 5, 5, '2021-09-25', 2, 500.00),
(6, 6, 6, '2021-11-30', 1, 100.00),
(7, 7, 1, '2022-02-15', 1, 200.00),
(8, 1, 2, '2022-04-10', 1, 1200.00),
(9, 2, 3, '2022-06-20', 2, 600.00),
(10, 3, 4, '2022-08-05', 3, 450.00),
(11, 4, 5, '2022-10-11', 1, 800.00),
(12, 5, 6, '2022-12-29', 4, 1000.00);




