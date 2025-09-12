-- Find the department numbers (DEPTNO) from the EMP_OLD table where the count of employees whose names (ENAME) do not start with a vowel (a, e, i, o, u) is 3 or more.
SELECT COUNT(*),
    DEPTNO
FROM EMP_OLD
WHERE SUBSTR(ENAME, 1, 1) NOT IN('a', 'e', 'i', 'o', 'u')
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;
-- Find the maximum salary (SAL) for each job (JOB) from the EMP_OLD table, excluding the job 'CLERK', where the maximum salary is 2000 or more.
SELECT MAX(SAL),
    JOB
FROM EMP_OLD
WHERE JOB NOT IN('CLERK')
GROUP BY JOB
HAVING MAX(SAL) >= 2000;
-- Find the count of employees hired in each month (extracted from HIREDATE) from the EMP_OLD table, excluding the months of October ('OCT') and September ('SEPT'), where the count of employees is 2 or more.
SELECT COUNT(*),
    SUBSTR(HIREDATE, 4, 3)
FROM EMP_OLD
WHERE SUBSTR(HIREDATE, 4, 3) NOT IN('OCT', 'SEPT')
GROUP BY SUBSTR(HIREDATE, 4, 3)
HAVING COUNT(*) >= 2;
-- Find the salaries (SAL) from the EMP_OLD table that are even numbers and appear more than once.
SELECT SAL
FROM EMP_OLD
WHERE MOD(SAL, 2) = 0
GROUP BY SAL
HAVING COUNT(*) > 1;
-- Find the total salary (SUM(SAL)) for each job (JOB) from the EMP_OLD table, excluding employees hired in the year 1987 (HIREDATE not ending with '87'), where the total salary is greater than 5000.
SELECT SUM(SAL),
    JOB
FROM EMP_OLD
WHERE HIREDATE NOT LIKE '%87'
GROUP BY JOB
HAVING SUM(SAL) > 5000;
-- Find the count of employees in each department (DEPTNO) from the EMP_OLD table, ordering the results by department number in descending order.
SELECT COUNT(*),
    DEPTNO
FROM EMP_OLD
GROUP BY DEPTNO
ORDER BY DEPTNO DESC;
-- Find the maximum salary (SAL) for each job (JOB) from the EMP_OLD table, ordering the results by job in ascending order.
SELECT MAX(SAL),
    JOB
FROM EMP_OLD
GROUP BY JOB
ORDER BY JOB ASC;
-- Find the salaries (SAL) from the EMP_OLD table that appear more than once, ordering the results by salary in descending order.
SELECT SAL
FROM EMP_OLD
GROUP BY SAL
HAVING COUNT(*) > 1
ORDER BY SAL DESC;
-- Find the count of employees hired in each month (extracted from HIREDATE) from the EMP_OLD table, ordering the results by month in descending order.
SELECT COUNT(*),
    SUBSTR(HIREDATE, 4, 3)
FROM EMP_OLD
GROUP BY SUBSTR(HIREDATE, 4, 3)
ORDER BY SUBSTR(HIREDATE, 4, 3) DESC;
-- Find the jobs (JOB) from the EMP_OLD table that have more than one employee, ordering the results by job in ascending order.
SELECT JOB
FROM EMP_OLD
GROUP BY JOB
HAVING COUNT(JOB) > 1
ORDER BY JOB ASC;