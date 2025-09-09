select ename,
    to_char(hiredate, 'DAY')
from emp_old
where to_char(hiredate, 'FMDAY') = 'SUNDAY';
-- // query to find employees who were hired on a Wednesday
select ename,
    to_char(hiredate, 'DAY')
from emp_old
where to_char(hiredate, 'FMDAY') = 'WEDNESDAY';
-- // query to find employees who were hired on a Wednesday
select ename,
    to_char(hiredate, 'DAY')
from emp_old
where to_char(hiredate, 'DAY') = 'WEDNESDAY';
-- // query to find employees who were hired on a Thursday
select ename,
    to_char(hiredate, 'DAY')
from emp_old
where to_char(hiredate, 'DAY') = 'THURSDAY ';
-- // query to find employees who were hired on a Friday
select empno,
    ename,
    sal,
    comm,
    NVL2(comm, sal + comm, sal) as total_salary
from emp_old;
-- // query to find employees who get commision
select ename,
    NVL2(comm, 'Gets Commision', 'No Commision') as comm_status -- // query to find employees who get commision
select ename,
    sal,
    NVL2(comm, comm, 0) as commission_value
from emp_old;