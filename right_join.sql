--RIGHT JOIN questions
--Write a SQL query to report the first name, last name, city, and state of each person. If a person's address is not present, return NULL for city and state.
 | personId | lastName | firstName |
| -------: | -------- | --------- |
|        1 | Wang     | Allen     |
|        2 | Alice    | Bob       |

| addressId | personId | city          | state      |
| --------: | -------: | ------------- | ---------- |
|         1 |        2 | New York City | New York   |
|         2 |        3 | America       | California |



   
--Write a query to display every student and every subject, along with the number of examinations attended.
| student_id | student_name |
| ---------: | ------------ |
|          1 | Alice        |
|          2 | Bob          |
|          3 | Alex         |

| subject_name |
| ------------ |
| Math         |
| Physics      |



   
--Find employees who earn more than their managers.
| id | name  | salary | managerId |
| -: | ----- | -----: | --------: |
|  1 | Joe   |  70000 |         3 |
|  2 | Henry |  80000 |         4 |
|  3 | Sam   |  60000 |      NULL |
|  4 | Max   |  90000 |      NULL |



--
