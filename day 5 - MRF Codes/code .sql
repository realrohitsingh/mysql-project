-- SQL Queries using HAVING Clause
SELECT COUNT(*),
    DEPTNO
FROM EMP_OLD
GROUP BY DEPTNO
HAVING COUNT(*) >= 2;
-- Find the maximum salary for each job role where the maximum salary is greater than 2500
SELECT MAX(SAL),
    JOB
FROM EMP_OLD
GROUP BY JOB
HAVING MAX(SAL) > 2500;
-- Find the salary values that are shared by more than one employee
SELECT COUNT(*),
    SAL
FROM EMP_OLD
GROUP BY SAL
HAVING COUNT(*) > 1;
-- Find the names of employees that are unique (i.e., names that appear only once in the table)
SELECT ENAME
FROM EMP_OLD
GROUP BY ENAME
HAVING COUNT(ENAME) = 1;
-- Find the salary values that are unique (i.e., salaries that appear only once in the table)
SELECT SAL
FROM EMP_OLD
GROUP BY SAL
HAVING COUNT(SAL) = 1;
-- Find the job roles that are unique (i.e., job roles that appear only once in the table)
SELECT JOB
FROM EMP_OLD
GROUP BY JOB
HAVING COUNT(JOB) = 1;