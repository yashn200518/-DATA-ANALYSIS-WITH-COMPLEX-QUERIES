# -DATA-ANALYSIS-WITH-COMPLEX-QUERIES
COMPANY - CODTECH IT SOLUTION

NAME - YASH NAWALE

INTERN ID - CT12DL363

DOMAIN - SQL

DURATION - 8 WEEKS

MENTOR - NEELA SANTOSH

# DESCRIPTION

In Task 2 of the CodTech SQL project, the focus shifted from database creation to advanced data analysis using powerful SQL features like window functions, subqueries, and common table expressions (CTEs). This task utilized the previously created codtech database containing two main tables: IT_Sector and Sector_Projects.

The analysis began with a window function implementation to rank IT sectors based on the number of projects that had been completed. This was achieved by first creating a temporary result set using a CTE (Common Table Expression) named CompletedProjects, which grouped and counted all completed projects per sector. A RANK() window function was then used in the final SELECT statement to assign a rank to each sector based on the number of completed projects, ordered in descending order. This enabled identification of the top-performing sectors across the organization.

Next, a subquery was used to list all sectors that had more than one completed project. This involved a SELECT query inside a WHERE IN clause, with GROUP BY and HAVING COUNT(*) > 1. Interestingly, when executed, the result showed that no sector had more than one completed project at the time—an important insight into project distribution.

The script continued by identifying sectors with pending projects using a similar WHERE IN subquery, filtering for projects with Status = 'Pending'. This provided clarity on which sectors might be experiencing delays or are currently engaged in ongoing work.

Another analytical query focused on finding the project with the longest name. This was performed by comparing the length of each project name using the LENGTH() function and selecting the one that matched the maximum value. This kind of query is useful in UI/UX considerations or project documentation.

Further, the script also addressed sectors with no completed projects by selecting Sector_IDs from the IT_Sector table that did not appear in the list of completed project sector IDs—using NOT IN. This insight helps pinpoint underperforming or newly established sectors with no successful project completions.

A more detailed analysis was carried out using another CTE, this time named ProjectCount, to determine the total number of projects per sector, regardless of status. The CTE grouped project data by Sector_ID, and this was joined with the IT_Sector table to present the sector name, head office city, and project count. The result set was sorted in descending order to highlight the most active sectors and locations, offering strategic insights into workload distribution and project management.

Lastly, although unrelated to the previous dataset, a final CTE named HighEarners was included to demonstrate filtering records from an employees table where the salary exceeded 80,000. This emphasized how CTEs can be reused for clean, modular queries even outside the current schema context.

Overall, this task showcased the use of modern SQL analytical techniques to extract meaningful insights from relational data. It demonstrated how window functions, subqueries, and CTEs can help analyze performance, identify trends, and support decision-making in an IT business context.

# OUTPUT
<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/6af16bce-90ab-4f15-a459-88cf21294c6e" />
