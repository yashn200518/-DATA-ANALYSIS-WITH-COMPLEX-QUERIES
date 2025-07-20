use codtechitsolutions;
-- WINDOW FUNCTIONS (Over(), Rank(), Dense_Rank(), Row_Number(), etc.)

-- a. Rank employees by department based on their employee ID
SELECT 
    employee_id,
    employee_name,
    department_id,
    RANK() OVER (PARTITION BY department_id ORDER BY employee_id) AS dept_rank
FROM Employees;

-- b. Count number of employees per department (with every row)
SELECT 
    employee_name,
    department_id,
    COUNT(*) OVER (PARTITION BY department_id) AS total_employees_in_dept
FROM Employees;

-- SUBQUERIES
--  a. Get names of employees who are working on the most projects
SELECT employee_name
FROM Employees
WHERE employee_id IN (
    SELECT employee_id
    FROM Employee_Project_Assignments
    GROUP BY employee_id
    HAVING COUNT(*) = (
        SELECT MAX(project_count) FROM (
            SELECT COUNT(*) AS project_count
            FROM Employee_Project_Assignments
            GROUP BY employee_id
        ) AS sub
    )
);

--  b. List employees who are not assigned to any project
SELECT employee_name
FROM Employees
WHERE employee_id NOT IN (
    SELECT DISTINCT employee_id FROM Employee_Project_Assignments
);


-- COMMON TABLE EXPRESSIONS (CTEs)

-- a. CTE to get department-wise employee count.
WITH DeptCounts AS (
    SELECT department_id, COUNT(*) AS emp_count
    FROM Employees
    GROUP BY department_id
)
SELECT d.department_name, c.emp_count
FROM DeptCounts c
JOIN Departments d ON c.department_id = d.department_id;


-- b. CTE to find employees with multiple project roles.
WITH MultiRole AS (
    SELECT employee_id
    FROM Employee_Project_Assignments
    GROUP BY employee_id
    HAVING COUNT(DISTINCT role) > 1
)
SELECT employee_name
FROM Employees
WHERE employee_id IN (SELECT employee_id FROM MultiRole);

