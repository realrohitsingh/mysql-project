-- Find all employees who report to 'SMITH'
SELECT *
FROM EMP
WHERE EMPNO =(
        SELECT MGR
        FROM EMP
        WHERE ENAME = 'SMITH'
    );
-- Find all employees who report to either 'SMITH' or 'TURNER'
SELECT *
FROM EMP
WHERE EMPNO IN (
        SELECT MGR
        FROM EMP
        WHERE ENAME IN ('SMITH', 'TURNER')
    );
-- Find the second highest salary
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (
        SELECT MAX(SAL)
        FROM EMP
        WHERE SAL < (
                SELECT MAX(SAL)
                FROM EMP
            )
    );
-- Find all departments that have more than 2 employees
SELECT ROWNUM
FROM DEPT;
-- Find the rowids of all departments
SELECT ROWID
FROM DEPT;
-- Find any one employee
SELECT *
FROM EMP
WHERE ROWNUM = 1;
-- Find all employees, ordered by rownum descending
SELECT *
FROM EMP
ORDER BY ROWNUM DESC;
-- Find the first 3 employees
SELECT *
FROM EMP
WHERE ROWNUM <= 3;
-- Find the last 3 employees, ordered by rownum descending
SELECT *
FROM EMP
WHERE ROWNUM <= 3
ORDER BY ROWNUM DESC;
-- Find the 5th employee
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE R = 5;
-- Find the 1st, 4th, and 5th employees
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE R IN (1, 4, 5);
-- Find all odd numbered employees
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE MOD(R, 2) = 1;
-- Find all even numbered employees
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE MOD(R, 2) = 0;
-- Find the first half of employees
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE R <= (
        SELECT CEIL(COUNT(*) / 2)
        FROM EMP
    );
-- Find the second half of employees
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE R >= (
        SELECT CEIL(COUNT(*) / 2)
        FROM EMP
    );
-- Find the last 3 employees, ordered by rownum descending
SELECT *
FROM(
        SELECT EMP.*,
            ROWNUM R
        FROM EMP
    )
WHERE R IN (1, 2, 3)
ORDER BY R DESC;