USE org;

SELECT * FROM emp;

-- how to find duplicates in a given table
SELECT emp_id, COUNT(emp_id)
FROM emp
GROUP BY emp_id
HAVING COUNT(emp_id) > 1

-- how to delete duplicates

DELETE FROM emp
WHERE 


-- difference between union and union all


-- 
