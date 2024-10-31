
mysql> USE sajin;
Database changed
mysql> CREATE TABLE student(
    -> id INT,
    -> Name varchar(30),
    -> gpa DECIMAL(3,2)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int          | YES  |     | NULL    |       |
| Name  | varchar(30)  | YES  |     | NULL    |       |
| gpa   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE students(
    -> ID int,
    -> NAME VARCHAR(40),
    -> GPA DECIMAL(3,2)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESCRIBE STUDENTS;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | YES  |     | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE AK(
    -> ID int PRIMARY KEY,
    -> NAME VARCHAR(40),
    -> GPA DECIMAL(3,2)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC AK;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | NO   | PRI | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DROP STUDENT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'STUDENT' at line 1
mysql> DROP TABLE STUDENT;
Query OK, 0 rows affected (0.03 sec)

mysql> DESC SAJIN;
ERROR 1146 (42S02): Table 'sajin.sajin' doesn't exist
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| world              |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE SAJIN;
Database changed
mysql> SHOW TABLES;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| students        |
+-----------------+
2 rows in set (0.00 sec)

mysql> DESC AK;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | NO   | PRI | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESC STUDENTS;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | YES  |     | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DROP STUDENTS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'STUDENTS' at line 1
mysql> DROP TABLE STUDENTS;
Query OK, 0 rows affected (0.02 sec)

mysql> SHOW TABLES;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
+-----------------+
1 row in set (0.00 sec)

mysql> DESC AK;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | NO   | PRI | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE ak ADD DEPARTMENT VARCHAR(10);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC AK;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ID         | int          | NO   | PRI | NULL    |       |
| NAME       | varchar(40)  | YES  |     | NULL    |       |
| GPA        | decimal(3,2) | YES  |     | NULL    |       |
| DEPARTMENT | varchar(10)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE ak DROP DEPARTMENT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC AK;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | NO   | PRI | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE ak ADD COLUMN DEPARTMENT VARCHAR(10);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC AK;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ID         | int          | NO   | PRI | NULL    |       |
| NAME       | varchar(40)  | YES  |     | NULL    |       |
| GPA        | decimal(3,2) | YES  |     | NULL    |       |
| DEPARTMENT | varchar(10)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> ALTER TABLE ak DROP COLUMN DEPARTMENT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC AK;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | NO   | PRI | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO AK VALUES()
    -> ;
ERROR 1364 (HY000): Field 'ID' doesn't have a default value
mysql> INSERT INTO AK VALUES()
    -> ;
ERROR 1364 (HY000): Field 'ID' doesn't have a default value
mysql> INSERT INTO AK VALUES(
    -> 1,"SAJIN",7.2);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM AK;
+----+-------+------+
| ID | NAME  | GPA  |
+----+-------+------+
|  1 | SAJIN | 7.20 |
+----+-------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO AK VALUES(2,"LIJIN",9.8);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO AAK VALUES(3,"AARON",9.7);
ERROR 1146 (42S02): Table 'sajin.aak' doesn't exist
mysql> INSERT INTO AK VALUES(3,"AARON",9.7);
Query OK, 1 row affected (0.01 sec)

mysql> DESC AK;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| ID    | int          | NO   | PRI | NULL    |       |
| NAME  | varchar(40)  | YES  |     | NULL    |       |
| GPA   | decimal(3,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM AK;
+----+-------+------+
| ID | NAME  | GPA  |
+----+-------+------+
|  1 | SAJIN | 7.20 |
|  2 | LIJIN | 9.80 |
|  3 | AARON | 9.70 |
+----+-------+------+
3 rows in set (0.00 sec)

mysql> INSERT INTO AK VALUES(4,"NIJAS",8.9),
    -> (5,"NORAA",7.8),(6,"NIJIL".7.9)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.7.9)' at line 2
mysql> INSERT INTO AK VALUES(4,"NIJAS",8.9),
    -> (5,"NORAA",7.8),(6,"NIJIL".7.9);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.7.9)' at line 2
mysql> INSERT INTO AK VALUES(4,"NIJAS",8.9),
    -> (5,"NORAA",7.8),(6,"NIJIL",7.9);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM AK;
+----+-------+------+
| ID | NAME  | GPA  |
+----+-------+------+
|  1 | SAJIN | 7.20 |
|  2 | LIJIN | 9.80 |
|  3 | AARON | 9.70 |
|  4 | NIJAS | 8.90 |
|  5 | NORAA | 7.80 |
|  6 | NIJIL | 7.90 |
+----+-------+------+
6 rows in set (0.00 sec)

mysql> INSERT INTO AK (ID,NAME) VALUES(7,"BOSS");
Query OK, 1 row affected (0.01 sec)

mysql> SELECT*FROM AK;
+----+-------+------+
| ID | NAME  | GPA  |
+----+-------+------+
|  1 | SAJIN | 7.20 |
|  2 | LIJIN | 9.80 |
|  3 | AARON | 9.70 |
|  4 | NIJAS | 8.90 |
|  5 | NORAA | 7.80 |
|  6 | NIJIL | 7.90 |
|  7 | BOSS  | NULL |
+----+-------+------+
7 rows in set (0.00 sec)

mysql> INSERT INTO AK VALUES(7);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO AK (GPA) VALUES(6.9);
ERROR 1364 (HY000): Field 'ID' doesn't have a default value
mysql> INSERT INTO AK (ID) VALUES(8);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM AK;
+----+-------+------+
| ID | NAME  | GPA  |
+----+-------+------+
|  1 | SAJIN | 7.20 |
|  2 | LIJIN | 9.80 |
|  3 | AARON | 9.70 |
|  4 | NIJAS | 8.90 |
|  5 | NORAA | 7.80 |
|  6 | NIJIL | 7.90 |
|  7 | BOSS  | NULL |
|  8 | NULL  | NULL |
+----+-------+------+
8 rows in set (0.00 sec)

mysql> SELECT ID,NAME FROM AK;
+----+-------+
| ID | NAME  |
+----+-------+
|  1 | SAJIN |
|  2 | LIJIN |
|  3 | AARON |
|  4 | NIJAS |
|  5 | NORAA |
|  6 | NIJIL |
|  7 | BOSS  |
|  8 | NULL  |
+----+-------+
8 rows in set (0.00 sec)

mysql> SELECT GPA FROM AK;
+------+
| GPA  |
+------+
| 7.20 |
| 9.80 |
| 9.70 |
| 8.90 |
| 7.80 |
| 7.90 |
| NULL |
| NULL |
+------+
8 rows in set (0.00 sec)

mysql>
