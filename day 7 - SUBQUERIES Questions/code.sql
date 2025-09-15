-- Find the employees whose salary is greater than the salary of employee 'ALLEN'
select *
from emp_old
where sal > (
        select sal
        from emp_old
        where ename = 'ALLEN'
    );
-- Find the employees whose salary is less than the salary of employee 'FORD'
select *
from emp_old
where sal < (
        select sal
        from emp_old
        where ename = 'FORD'
    );
-- Find the employees whose salary is less than the salary of employee 'FORD'
select *
from emp_old
where sal < (
        select sal
        from emp_old
        where ename = 'CLERK'
    );
-- Find the employees whose job is same as that of employee 'JAMES'
select ename
from emp_old
where job = (
        select job
        from emp_old
        where ename = 'JAMES'
    );
-- Find the employees who work in the same department as that of employee 'JONES'
select ename
from emp_old
where deptNo = (
        select deptNo
        from emp_old
        where ename = 'JONES'
    );
-- Find the employees who were hired in the same year as that of employee 'TURNER'
select ename,
    hiredate
from emp_old
where extract(
        year
        from hiredate
    ) = (
        select extract(
                year
                from hiredate
            )
        from emp_old
        where ename = 'TURNER'
    );
-- Find the employees who were hired in the same month as that of employee 'FORD'
select *
from emp_old
where extract(
        month
        from hiredate
    ) = (
        select extract(
                month
                from hiredate
            )
        from emp_old
        where ename = 'FORD'
    );
-- Find the employees whose manager is the same as that of employee 'SMITH'
select *
from emp_old
where empNo = (
        select MGR
        from emp_old
        where ename = 'SMITH'
    );
-- Find the employees whose manager is 'FORD'
select ename,
    job
from emp_old
where mgr = (
        select empNo
        from emp_old
        where ename = 'FORD'
    );
-- Find the employees who work in the same department as that of employee 'TURNER'
select ename
from emp_old
where deptno = (
        select deptno
        from emp_old
        where ename = 'TURNER'
    );
-- Find the department name where employee 'SMITH' works
select dname
from dept
where deptno = (
        select deptno
        from emp_old
        where ename = 'SMITH'
    );
-- Find the employees whose manager is the manager of employee 'SMITH'
select *
from emp_old
where empno = (
        select mgr
        from emp_old
        where empno = (
                select mgr
                from emp_old
                where ename = 'SMITH'
            )
    );
-- Find the employees whose manager is the manager of the manager of employee 'SMITH'
select *
from emp_old
where empno = (
        select mgr
        from emp_old
        where empno = (
                select mgr
                from emp_old
                where empno = (
                        select mgr
                        from emp_old
                        where ename = 'SMITH'
                    )
            )
    );
-- Find the location of the department where employee 'SMITH' works
select loc
from dept
where deptno = (
        select deptno
        from emp_old
        where ename = 'SMITH'
    );
-- Find the maximum salary from the salgrade table
select max(hisal)
from salgrade;
-- Find the second highest salary from the salgrade table
select max(hisal)
from salgrade
where hisal not in (
        select max(hisal)
        from salgrade
    );
-- Find the third highest salary from the salgrade table
select max(hisal)
from salgrade
where hisal not in (
        (
            select max(hisal)
            from salgrade
            where hisal not in (
                    select max(hisal)
                    from salgrade
                )
        ),
        (
            select max(hisal)
            from salgrade
        )
    );
-- Find the fourth highest salary from the salgrade table
select max(hisal)
from salgrade
where hisal < (
        select max(hisal)
        from salgrade
        where hisal not in (
                (
                    select max(hisal)
                    from salgrade
                    where hisal not in (
                            select max(hisal)
                            from salgrade
                        )
                ),
                (
                    select max(hisal)
                    from salgrade
                )
            )
    );
-- Find the minimum salary from the salgrade table
select min(losal)
from salgrade;
-- Find the second minimum salary from the salgrade table
select min(losal)
from salgrade
where losal not in (
        select min(losal)
        from salgrade
    );
-- Find the third minimum salary from the salgrade table
select min(losal)
from salgrade
where losal not in (
        (
            select min(losal)
            from salgrade
            where losal not in (
                    select min(losal)
                    from salgrade
                )
        ),
        (
            select min(losal)
            from salgrade
        )
    );
-- Find the fourth minimum salary from the salgrade table
select min(losal)
from salgrade
where losal > (
        select min(losal)
        from salgrade
        where losal not in (
                (
                    select min(losal)
                    from salgrade
                    where losal not in (
                            select min(losal)
                            from salgrade
                        )
                ),
                (
                    select min(losal)
                    from salgrade
                )
            )
    );
-- Find the manimum hiredate from the emp_old table
select min(hiredate)
from emp_old;
-- Find the second manimum hiredate from the emp_old table
select min(hiredate)
from emp_old
where hiredate not in (
        select min(hiredate)
        from emp_old
    );
-- Find the fourth manimum hiredate from the emp_old table
select min(hiredate)
from emp_old
where hiredate > (
        select min(hiredate)
        from emp_old
        where hiredate not in (
                (
                    select min(hiredate)
                    from emp_old
                    where hiredate not in (
                            select min(hiredate)
                            from emp_old
                        )
                ),
                (
                    select min(hiredate)
                    from emp_old
                )
            )
    );
-- Find the maximum hiredate from the emp_old table
select max(hiredate)
from emp_old;
-- Find the second maximum hiredate from the emp_old table
select max(hiredate)
from emp_old
where hiredate not in (
        select max(hiredate)
        from emp_old
    );
-- Find the third maximum hiredate from the emp_old table
select max(hiredate)
from emp_old
where hiredate not in (
        (
            select max(hiredate)
            from emp_old
            where hiredate not in (
                    select max(hiredate)
                    from emp_old
                )
        ),
        (
            select max(hiredate)
            from emp_old
        )
    );
-- Find the fourth maximum hiredate from the emp_old table
select max(hiredate)
from emp_old
where hiredate < (
        select max(hiredate)
        from emp_old
        where hiredate not in (
                (
                    select max(hiredate)
                    from emp_old
                    where hiredate not in (
                            select max(hiredate)
                            from emp_old
                        )
                ),
                (
                    select max(hiredate)
                    from emp_old
                )
            )
    );