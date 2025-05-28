# Company Sales Database
This project uses PostgreSQL to manage and analyze data across employees, products and sales.
## Schema overview
### Employees Tables
- Base table with attributes employee_id, first_name, last_name, gender, department, hire_date and salary.
### Products Table
- Base table with attributes product_id, product_name, category, price and stock.
### Sales Table
- Base table with atributes sale_id, product_id referencing from products table, employee_id referencing from employees table, sale_date, quantity and total for price.
