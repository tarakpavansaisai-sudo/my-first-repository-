SELECT d.name AS department, SUM(r.salary) AS total_budget
FROM employees e
JOIN roles r ON e.role_id = r.id
JOIN departments d ON r.department_id = d.id
GROUP BY d.name;
