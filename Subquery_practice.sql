Question 1
Display the department names of all employees who are working in the same department as SCOTT, working in a different job from SMITH, hired before any SALESMAN, earning a salary greater than the minimum salary of department 30, earning a commission less than any employee in department 20, and reporting to the manager of JONES.
Practise: IN, <>, ANY, MIN, manager subqueries.

Question 2
Display the locations of all departments in which employees work who were hired after SMITH but before all SALESMAN, working in the same job as ALLEN, earning the second maximum salary in the company, receiving a commission greater than the minimum commission in department 30, and reporting to the same manager as JONES.
Practise: ALL, MAX, nested comparisons, multiple conditions.

Question 3
Display the department names of employees who work in a different department from KING, have the same job as FORD, were hired before the earliest-hired employee in department 20, earn the third minimum salary in the company, and receive a commission less than at least one employee in department 10.
Practise: nested MIN, ANY, department comparisons.

Level 2 — Very long questions
Question 4
Display the locations of all employees who are working in the same department as JONES, working in a different job from SCOTT, hired on the fourth earliest distinct hiring date in the company, earning the third maximum distinct salary, receiving a commission greater than all employees in department 10, and reporting to the manager of the employee who reports to SMITH's manager.
Practise: fourth hire date, third maximum salary, ALL, nested manager hierarchy.

Question 5
Display the department names of employees who work in the same department as MILLER, have a job different from CLARK, were hired later than any ANALYST, earn the fourth minimum distinct salary among employees reporting to KING's manager, receive a commission less than all employees in department 30, and belong to a department located in the same location as SMITH's department.
Practise: ranked salaries inside filtered subqueries, ANY, ALL, location subqueries.

Question 6
Display the locations of departments containing employees who work in a different department from SMITH, work in the same job as JONES, were hired before the latest-hired CLERK, earn the second minimum distinct salary among employees working under SMITH's manager's manager, and receive a commission greater than at least one employee in department 20 but less than every employee in department 10.
Practise: nested ranking, multi-level managers, combined ANY and ALL.

Level 3 — Exam-style mega questions
Question 7
Display the department names of all employees who are working in the same department as SCOTT and in a different job from SMITH, were hired before any SALESMAN but after all CLERKS, earn the fourth maximum distinct salary in the company, receive the third minimum distinct commission among employees working in department 30, and report to SMITH's manager's manager.
Practise: two hiring-date comparisons, two ranking conditions, three-level logic.

Question 8
Display the locations of all employees who are working in the same job as FORD but in a different department from ALLEN, were hired on the third latest distinct hiring date, earn the fourth minimum distinct salary among employees reporting to the manager of JONES's manager, receive a commission greater than all employees in department 20 and less than any employee in department 30, and work in a department whose department number is greater than the department number of SMITH.
Practise: ranked dates, nested salary filtering, manager chains, ALL and ANY.

Question 9
Display the department names of employees who work in the same department as KING, have a job different from every employee working in department 20, were hired earlier than the fourth latest distinct hire date in the company, earn the third maximum distinct salary among employees reporting to SMITH's manager's manager's manager, and receive a commission greater than the minimum commission in department 10 but less than the maximum commission in department 30.
Practise: NOT IN or <> ALL, date ranking, four-level salary filtering.

Question 10 — Challenge
Display the locations of departments in which employees work who satisfy all these conditions: they belong to the same department as JONES but have a different job from SCOTT; they were hired after the third earliest distinct hire date among SALESMAN but before all ANALYST employees; they earn the fourth maximum distinct salary among employees reporting to SMITH's manager's manager; their commission is the second minimum distinct non-NULL commission in department 30; and they report to the manager's manager's manager of the employee earning the maximum salary in department 20.
Practise: deeply nested subqueries, correlated concepts, date and salary ranking, commission ranking, manager hierarchy.

Level 4 — Extra-hard practice
Question 11
Display the department names of employees working in the same location as SMITH's department but in a different department from JONES, having a job different from all SALESMAN, hired after the second earliest hire date in department 10 and before the latest hire date in department 20, earning the fifth minimum distinct salary among employees reporting to SMITH's manager's manager's manager, and receiving a commission greater than any employee in department 30 but less than all employees in department 10.

Question 12
Display the locations of all employees who work in the same job as the employee earning the third maximum salary in the company, work in a department different from SMITH's department, were hired before the second latest distinct hire date among CLERKS, earn the second maximum distinct salary among employees reporting to the manager of KING's manager, and receive a commission equal to the third minimum distinct non-NULL commission in the company.

Question 13 — Final boss
Display the department names of employees who are working in the same department as FORD, working in a different job from SMITH and ALLEN, 
hired after the fourth earliest distinct hire date in the company but before all SALESMAN, earning the third maximum distinct salary among 
employees reporting to SMITH's manager's manager's manager, receiving a commission greater than every employee in department 10 but less 
than at least one employee in department 30, and reporting to the manager's manager's manager's manager of the employee with the second 
maximum salary in department 20.
select dname
  from dept
  where deptno in (select deptno from emp where deptno in 
             (select deptno from emp where ename='ford') and job not in
             (select job from emp where ename in ('smith','allen') ) and hiredate > 
             (select min(hiredate) from emp where hiredate >
             (select min(hiredate) from emp where hiredate >
             (select min(hiredate) from emp where hiredate >
             (select min(hiredate) from emp )))) and hiredate < all 
             (select hiredate from emp where job='salesman') and sal in
             (select distinct max(sal) from emp where sal <
             (select distinct max(sal) from emp where sal <
             (select distinct max(sal) from emp ))) and empno in 
              (select mgr from emp where empno in
              (Select mgr from emp where empno in
               (select mgr from emp where ename='smith'))) and comm > all
               (select comm from emp where deptno=10) and comm < any 
                (select comm from emp where deptno=30) and empno in
                (Select mgr from emp where empno in 
                (Select mgr from emp where empno in 
                (Select mgr from emp where empno in 
                (Select mgr from emp )))) and sal in
                (select max(Sal) from emp where sal <
                (select max(Sal) from emp where deptno=20)));
            














  
