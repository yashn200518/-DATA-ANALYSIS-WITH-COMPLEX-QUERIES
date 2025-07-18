--                                             TASK - 2 DATA ANALYSIS WITH COMPLEXQUERIES.
use codtech;

				 -- Window Function: Rank sectors by number of completed projects 
WITH CompletedProjects AS (
  SELECT 
    Sector_ID,
    COUNT(*) AS Completed_Count
  FROM Sector_Projects
  WHERE Status = 'Completed'
  GROUP BY Sector_ID
)
SELECT 
  s.Sector_Name,
  s.Head_Office,
  cp.Completed_Count,
  RANK() OVER (ORDER BY cp.Completed_Count DESC) AS Completion_Rank
FROM CompletedProjects cp
JOIN IT_Sector s ON cp.Sector_ID = s.Sector_ID;          -- Insight: Identify the top-performing sectors based on completed projects.



                  -- Subquery: List sectors that have more than 1 completed project.
                  
				
SELECT Sector_Name
FROM IT_Sector
WHERE Sector_ID IN (
    SELECT Sector_ID
    FROM Sector_Projects
    WHERE Status = 'Completed'
    GROUP BY Sector_ID
    HAVING COUNT(*) > 1
);                                         -- no sector has count>1

-- Find sectors with pending projects
SELECT Sector_Name
FROM IT_Sector
WHERE Sector_ID IN (
    SELECT Sector_ID
    FROM Sector_Projects
    WHERE Status = 'Pending'
);


-- Find the project with the longest name
SELECT Project_Name
FROM Sector_Projects
WHERE LENGTH(Project_Name) = (
    SELECT MAX(LENGTH(Project_Name))
    FROM Sector_Projects
);

-- Sectors without any completed projects
SELECT Sector_Name
FROM IT_Sector
WHERE Sector_ID NOT IN (
    SELECT Sector_ID
    FROM Sector_Projects
    WHERE Status = 'Completed'
);


                                               -- CTE + COUNT: Projects per Sector and City
WITH ProjectCount AS (
  SELECT 
    sp.Sector_ID,
    COUNT(*) AS Total_Projects
  FROM Sector_Projects sp
  GROUP BY sp.Sector_ID
)
SELECT 
  s.Sector_Name,
  s.Head_Office,
  pc.Total_Projects
FROM ProjectCount pc
JOIN IT_Sector s ON pc.Sector_ID = s.Sector_ID
ORDER BY pc.Total_Projects DESC;              -- Insight: See which cities and sectors are handling more projects.

WITH HighEarners AS (
  SELECT * 
  FROM employees 
  WHERE salary > 80000
)
SELECT name, department_id 
FROM HighEarners; -- here highearners in a ctes
