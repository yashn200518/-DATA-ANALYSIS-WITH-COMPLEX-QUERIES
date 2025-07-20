# -DATA-ANALYSIS-WITH-COMPLEX-QUERIES
COMPANY - CODTECH IT SOLUTION

NAME - YASH NAWALE

INTERN ID - CT12DL363

DOMAIN - SQL

DURATION - 8 WEEKS

MENTOR - NEELA SANTOSH

# DESCRIPTION

 I advanced my SQL data analysis skills by applying Window Functions, Subqueries, and Common Table Expressions (CTEs) on a structured IT company database consisting of four main tables: Departments, Employees, Projects, and Employee_Project_Assignments. These advanced SQL techniques allowed me to derive deep insights and perform analytical tasks beyond the capabilities of basic joins.

🔹 Window Functions
I started with Window Functions, which are used to perform calculations across sets of rows related to the current row without collapsing the result into groups. For instance, I used the RANK() function to rank employees within each department by their employee ID. This helped in identifying employee hierarchies or order of joining in each department.

Next, I used the COUNT() function as a window function to get the number of employees in each department without grouping the results. This was especially useful for displaying contextual counts while still retaining row-level detail. Additionally, I implemented ROW_NUMBER() to find the most recently assigned employee to each project by sorting assignment records in descending order. These window functions demonstrated how analytical operations can be embedded directly into row-level outputs for richer insights.

🔹 Subqueries
Then I explored Subqueries, which are nested queries used to filter or calculate values for the main query. One example involved identifying employees who are assigned to the highest number of projects. I used a subquery to calculate project counts for each employee, and another nested subquery to find the maximum count.

I also wrote a subquery to identify employees who are not assigned to any project. This is crucial for resource planning, as it helps identify underutilized human capital. Another subquery retrieved departments that had more than one employee, helping in workforce distribution analysis. Subqueries proved essential for filtering data based on aggregate results and allowed me to query across multiple logical layers efficiently.

🔹 Common Table Expressions (CTEs)
Finally, I applied CTEs to break down complex queries into more manageable and readable parts. A simple CTE calculated the number of employees per department, which I later joined with the department names to produce a clean summary of departmental sizes.

A more analytical CTE helped identify employees who played multiple roles across different projects, using GROUP BY and HAVING COUNT(DISTINCT role) > 1. This was helpful for understanding versatile team members. I also created a CTE to get the top three most recent assignments in each department using ROW_NUMBER() within a CTE, showing how multiple advanced features can be combined for meaningful insights.

🔹 Conclusion
This hands-on session strengthened my understanding of how advanced SQL concepts like window functions, subqueries, and CTEs can be used for in-depth business intelligence and employee/project analytics. These skills are essential for data analysts and backend developers working in IT environments where large, interrelated datasets are common. Overall, this was a productive session that simulated real-world analytical scenarios using SQL.

# OUTPUT
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/6af16bce-90ab-4f15-a459-88cf21294c6e" />
