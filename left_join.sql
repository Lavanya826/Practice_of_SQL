--LEFT JOIN Questions
--Write a query to display employee name and department name for all employees using LEFT JOIN.

SELECT E.ENAME,D.DNAME
  FROM EMP E LEFT JOIN DEPT D
  ON E.DEPTNO=D.DEPTNO;

--Write a query to display employee name, department name, and location for all employees using LEFT JOIN.

SELECT E.ENAME,D.DNAME,D.LOC
  FROM EMP E LEFT JOIN DEPT D
  ON E.DEPTNO=D.DEPTNO;
  
--Write a query to display employee name, salary, and department name for all employees using LEFT JOIN.

SELECT E.ENAME,E.SAL,D.DNAME
  FROM EMP E LEFT JOIN DEPT D
  ON E.DEPTNO=D.DEPTNO;

--Write a query to display employee name, job, department name, and location for all employees whose salary is greater than 2000 using LEFT JOIN.

SELECT E.ENAME,E.JOB,D.DNAME,D.LOC
  FROM EMP E LEFT JOIN DEPT D
  ON E.DEPTNO=D.DEPTNO
  WHERE E.SAL>2000;

--Write a query to display employee name and department name for employees working in the SALESMAN department using LEFT JOIN.

SELECT E.ENAME,D.DNAME
  FROM EMP E LEFT JOIN DEPT D
  ON E.DEPTNO=D.DEPTNO
  WHERE E.JOB='SALESMAN';

--Write a query to display employee name, department number, department name, and location, including employees who don't belong to any department.

SELECT E.ENAME,D.DEPTNO,D.DNAME,D.LOC
  FROM EMP E LEFT JOIN DEPT D
  ON E.DEPTNO=D.DEPTNO;

--Write a query to display all employees along with their department name, including employees who don't have a matching department.

SELECT E.ENAME,D.DNAME
FROM EMP E LEFT JOIN DEPT D
ON E.DEPTNO=D.DEPTNO;

--Write a query to display employee name, salary, department name, and location for employees whose job is MANAGER, using LEFT JOIN.

--Write a query to display all employees and their department names, sorted by salary in descending order.

--Write a query to display employee name, department name, and location for employees who were hired after SMITH.
