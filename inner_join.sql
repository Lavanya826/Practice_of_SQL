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

SELECT E.ENAME,E.DEPTNO,DNAME
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO=D.DEPTNO;
