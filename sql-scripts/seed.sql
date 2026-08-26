USE EmployeeDB;

-- Insert Departments
INSERT INTO departments (name) VALUES ('Engineering'), ('Finance'), ('HR');

-- Insert Roles
INSERT INTO roles (title, salary, department_id) VALUES 
('Lead Engineer', 120000.00, 1),
('Software Engineer', 85000.00, 1),
('Accountant', 75000.00, 2),
('HR Manager', 70000.00, 3);

-- Insert Employees (Managers first, then direct reports)
INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES 
('Alice', 'Smith', 1, NULL),  -- Lead Engineer
('Bob', 'Johnson', 4, NULL); -- HR Manager

INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES 
('Charlie', 'Brown', 2, 1),   -- Software Engineer reporting to Alice
('Diana', 'Prince', 3, NULL); -- Accountant
