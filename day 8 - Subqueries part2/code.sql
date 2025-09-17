-- Find the employee(s) with the highest salary
select *
from emp
where sal =(
        select max(sal)
        from emp
    );
-- Find the employee(s) with the second highest salary
select *
from emp
where sal =(
        select max(sal)
        from emp
        where sal not in(
                select max(sal)
                from emp
            )
    );
-- Find the employee(s) with the lowest salary
select *
from emp
where sal =(
        select min(sal)
        from emp
    );
-- Find the employee(s) with the second lowest salary
select *
from emp
where sal =(
        select min(sal)
        from emp
        where sal not in(
                select min(sal)
                from emp
            )
    );
-- Find the employee(s) with the earliest hiredate
select *
from emp
where hiredate =(
        select min(hiredate)
        from emp
    );
-- Find the employee(s) with the second earliest hiredate
select *
from emp
where hiredate =(
        select min(hiredate)
        from emp
        where hiredate not in(
                select min(hiredate)
                from emp
            )
    );
-- Find the employee(s) with the most recent hiredate
select *
from emp
where hiredate =(
        select max(hiredate)
        from emp
    );
-- Find the employee(s) with the second most recent hiredate
select *
from emp
where hiredate =(
        select max(hiredate)
        from emp
        where hiredate not in(
                select max(hiredate)
                from emp
            )
    );
-- Find all employees who have the same job as BLAKE or SCOTT
SELECT *
FROM EMP
WHERE JOB IN(
        SELECT JOB
        FROM EMP
        WHERE ENAME IN('BLAKE', 'SCOTT')
    );
-- Find all employees who were hired in the same month as ALLEN or FORD
SELECT *
FROM EMP
WHERE SUBSTR(HIREDATE, 4, 3) IN (
        SELECT SUBSTR(HIREDATE, 4, 3)
        FROM EMP
        WHERE ENAME IN('ALLEN', 'FORD')
    );
-- Find all employees who report to the same manager as SMITH or TURNER
SELECT ENAME
FROM EMP
WHERE EMPNO IN (
        SELECT MGR
        FROM EMP
        WHERE ENAME IN('SMITH', 'TURNER')
    );
-- Find all departments that have the same department number as the departments of JAMES or JONES
SELECT *
FROM DEPT
WHERE DEPTNO IN (
        SELECT DEPTNO
        FROM EMP
        WHERE ENAME IN ('JAMES', 'JONES')
    );
-- Find all employees who work in the same location as the departments of NEWYORK, DALLAS, GOA or PONDICHERRY
SELECT *
FROM EMP
WHERE DEPTNO IN (
        SELECT DEPTNO
        FROM DEPT
        WHERE LOC IN('NEWYORK', 'DALLAS', 'GOA', 'PONDICHERRY')
    );
-- Find all employees who are managers
SELECT *
FROM EMP
WHERE EMPNO IN(
        SELECT MGR
        FROM EMP
    );
-- Find all employees who were hired on the same date as TURNER
SELECT *
FROM EMP
WHERE HIREDATE =(
        SELECT HIREDATE
        FROM EMP
        WHERE ENAME = 'TURNER'
    );
-- Find all employees who were hired on the same date as SCOTT
SELECT *
FROM EMP
WHERE HIREDATE =(
        SELECT HIREDATE
        FROM EMP
        WHERE ENAME = 'SCOTT'
    );
-- Find all employees whose salary is unique (i.e., no other employee has the same salary)
SELECT SAL
FROM EMP
WHERE SAL IN (
        SELECT SAL
        FROM EMP
        GROUP BY SAL
        HAVING COUNT(SAL) = 1
    );
-- Find all employees whose salary is not unique (i.e., at least one other employee has the same salary)
SELECT SAL
FROM EMP
WHERE SAL IN (
        SELECT SAL
        FROM EMP
        GROUP BY SAL
        HAVING COUNT(SAL) > 1
    );
-- Find all employees whose hiredate is unique (i.e., no other employee was hired on the same date)
SELECT HIREDATE
FROM EMP
WHERE HIREDATE IN (
        SELECT HIREDATE
        FROM EMP
        GROUP BY HIREDATE
        HAVING COUNT(HIREDATE) = 1
    );
-- Find all employees whose hiredate is not unique (i.e., at least one other employee was hired on the same date)
SELECT *
FROM EMP
WHERE SAL IN (
        SELECT SAL
        FROM EMP
        GROUP BY SAL
        HAVING COUNT(*) > 1
    );
-- Find all employees whose salary is not unique (i.e., at least one other employee has the same salary)
SELECT *
FROM EMP
WHERE SAL IN (
        SELECT SAL
        FROM EMP
        GROUP BY SAL
        HAVING COUNT(SAL) > 1
    );