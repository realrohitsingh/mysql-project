# EMP Table (Oracle 10g Classic)

This repository contains the structure and sample data of the **EMP** table (commonly used in Oracle 10g for SQL practice).
The table stores employee details such as employee number, name, job, manager, hire date, salary, commission, and department.

---

## Table Structure

| Column   | Data Type    | Description                     |
| -------- | ------------ | ------------------------------- |
| EMPNO    | NUMBER(4)    | Employee number (Primary Key)   |
| ENAME    | VARCHAR2(10) | Employee name                   |
| JOB      | VARCHAR2(9)  | Job designation                 |
| MGR      | NUMBER(4)    | Manager’s EMPNO                 |
| HIREDATE | DATE         | Date of joining                 |
| SAL      | NUMBER(7,2)  | Salary                          |
| COMM     | NUMBER(7,2)  | Commission (nullable)           |
| DEPTNO   | NUMBER(2)    | Department number (Foreign Key) |

---

## Sample Data

| EMPNO | ENAME  | JOB       | MGR  | HIREDATE  | SAL  | COMM | DEPTNO |
| ----- | ------ | --------- | ---- | --------- | ---- | ---- | ------ |
| 7369  | SMITH  | CLERK     | 7902 | 17-DEC-80 | 800  | NULL | 20     |
| 7499  | ALLEN  | SALESMAN  | 7698 | 20-FEB-81 | 1600 | 300  | 30     |
| 7521  | WARD   | SALESMAN  | 7698 | 22-FEB-81 | 1250 | 500  | 30     |
| 7566  | JONES  | MANAGER   | 7839 | 02-APR-81 | 2975 | NULL | 20     |
| 7654  | MARTIN | SALESMAN  | 7698 | 28-SEP-81 | 1250 | 1400 | 30     |
| 7698  | BLAKE  | MANAGER   | 7839 | 01-MAY-81 | 2850 | NULL | 30     |
| 7782  | CLARK  | MANAGER   | 7839 | 09-JUN-81 | 2450 | NULL | 10     |
| 7788  | SCOTT  | ANALYST   | 7566 | 19-APR-87 | 3000 | NULL | 20     |
| 7839  | KING   | PRESIDENT | NULL | 17-NOV-81 | 5000 | NULL | 10     |
| 7844  | TURNER | SALESMAN  | 7698 | 08-SEP-81 | 1500 | 0    | 30     |
| 7876  | ADAMS  | CLERK     | 7788 | 23-MAY-87 | 1100 | NULL | 20     |
| 7900  | JAMES  | CLERK     | 7698 | 03-DEC-81 | 950  | NULL | 30     |
| 7902  | FORD   | ANALYST   | 7566 | 03-DEC-81 | 3000 | NULL | 20     |
| 7934  | MILLER | CLERK     | 7782 | 23-JAN-82 | 1300 | NULL | 10     |

---

## Example Queries

### 1. Total Salary (Salary + Commission if available)

```sql
SELECT empno, ename, sal, comm,
       NVL2(comm, sal + comm, sal) AS total_salary
FROM emp;
```
