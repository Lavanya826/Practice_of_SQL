-- INNER JOIN
 -- 1.Display employee and department name
  
SELECT E.ENAME, D.DNAME
FROM EMP E
INNER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
