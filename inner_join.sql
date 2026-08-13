-- INNER JOIN
--Write a query to display the employee name and department name for all employees.
  
SELECT E.ENAME, D.DNAME
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

--Write a query to display employee name, job, and department name.

SELECT ENAME,JOB,DNAME
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO;

--Write a query to display employee name and department location.
SELECT E.ENAME,D.LOC
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO;

--Write a query to display employee name, salary, and department name for employees working in the SALES department.

SELECT ENAME,SAL,DNAME
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO
WHERE DNAME='SALES'; 

--Write a query to display employee name and department number along with the department name.

SELECT E.ENAME,E.DEPTNO,D.DNAME
FROM EMP E 
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO

--Write a query to display the employee name, salary, department name, and location for employees whose salary is greater than 2000.

SELECT E.ENAME,E.SAL,D.DNAME,D.LOC
FROM EMP E 
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO
WHERE SAL>'2000';

--Write a query to display the employee name and department name for employees whose job is MANAGER.

SELECT E.ENAME,E.JOB,D.DNAME,
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO
WHERE JOB='MANAGER';

--Write a query to display the employee name, job, department name, and location for employees working in CHICAGO.

SELECT E.ENAME,E.JOB,D.DNAME,D.LOC
FROM EMP E INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO
WHERE LOC='CHICAGO';

--Write a query to display the employee name and department name for employees whose department name starts with 'S'.

--Write a query to display the employee name, salary, and department name, sorted by salary in descending order.


