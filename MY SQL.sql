MY SQL
------
DATA :
------
collection of raw facts ,figures, symbol.
it is meaningless and unprocessed

Information:
------------
the data is processed of meanigfull data
ex: stdid=101;

File Management System(Fms):
----------------------------
key function of file management system:
---------------------------------------
1.File create
2.File open
3.File delete
4.File read
5.Share data
6.to provide access.

Drawbacks FMS:
-------------- 
1.Data inconsistency
2.less security
3.Data redundancy
4.Backup and recovery
5.Data manipulation
 

This above problems overcome the introduce Database:
DATA BASE:
----------
Data base is a tool it is used to store data

Management System:
------------------
It works to manage data, like retrive, update, delete data 

DBMS:
-----
1.DBMS stands for Data Base Management System
2.It is a software
3.The main purpose of DBMS is used to store data in permentally ,and manage data.

ADVANTAGES OF DBMS:
-------------------
1.Reduce data redundancy.
2.To provide more security.
3.To improve data inconsistency.
4.Possible to backup/recovery the data.
5.To maintain readability.

Types of DBMS:
--------------
NoSQL dbms:
-----------
1. The data is stored into the unstructured format.
EX: mongodb, postgrace sql.

RDBMS:
-----
1.It stands for Relational Data Base Management System.
2.In RDBMS the data stored into rows and columns(table format).
3.The data is stored into the structure format
 EX: MySQL, oracle..,etc.

MYSQL:  Avantages:
------
1.It is database.
2.In MySQL data is stored into the table format.
3.In MySQL provide relation ships.
4.Easy to maintain the database.
5.It is open source database.
6.It is free of cost.

Field/column: studentid = 101
record/row: collection of fields.
Studentid = 101, sname = 'rahul', course = 'da';
table: collection of records and fields.

MYSQL: PASSWORD:indu@182003
How to start my sql:  mysql -u root -p
what difference between oracle sql and my sql


show data base 
 name create :create database name 
enter the date name: use da22 
work the present data check: select database();
delete : drop database 

>08/08/2026:  day2

Data models :
-------------
data model is way of organaizing the data and representing the data, 
how to store data , how to manipulate the data into dbms.

Types of data models:
---------------------

>1).hierachical model:
---------------------
a)the organized data into a tree like structure (parent and child)
b)every child contain only one parent.
c)every parent can have multiple childs.
d)in that model easy retrive and maintain the data.
e)in that above model not comfortable for maintain complex relationships.
>EX:  institute----course------students

>2)Network datamodel:
a)the data is organized into nodes(entities) and edges(relationships).
b)in that mode one parent contain many childs.
c)one child can have many parents.
d)It is flexible for compare to hierarchical model.
>

>EX: one student can take multiple courses.
----
each course learn multiple students.

>3)Object oriented data model:
---------------------------
a)all data represented at objects.
b)every object can have 2 things.
c)properties and behaviours.

>4)EX: Relational Data Model:
---------------------------
> the data is stored into a tables with columns(fields) and rows(records).

EX: student:sid, snmae,...etc. 

DATA MODEL LEVEL:
-----------------
1. Conceptual level
2. Logical level
3. Phycial level

Introduction of sql:
====================
1.sql stands for structure qurery language
2.it is used to communicate with data bases such as MySQL, oracle, PostgreSQL.

USING SQL LANGUAGE:
===================
1.to create and delete structure in database.
2.to insert , update and delete data.
3.easy to retrive the data into a database.
4.to provide the control access

sql  language is divided into different categories: (sub categories or sub language)
====================================================
1.DDL
2.DML
3.TCL
4.DQL
5.DCL


1.DDL:
=====
# DDL stands for Data Definition Language. it is used to create and
manipulate language database, such as tables, views, database and schema


1.Create
2.alter
3.drop
4.truncate
5.rename

2.DML:
======
# DML stands for Data Manipulation Language.it is used to add, update and delete.
i)insert
ii)update
ii)delete


3.TCL:
======
# TCL stand for Transaction Control Language.It is used to transctions
i) commit
ii) rollback
iii)savepoint

4.DQL:
======
# DQL stands for Data Query Language. It is used to retrive the data.

i)select

5.DCL:
======
# DCL stands for Data Control Language. It is used to provide control access for database
i)grant   (give the permissions for users)
ii)revoke  (remove the permissions)


DATA TYPES IN SQL:
==================

1. Numeric Data Types
2. String Data Types
3.Date and Time Data Types

1. Numeric Data Types
=====================

tinyint--------- it is store very small amount of data.(0 into 1)
smallint--------
mediumint------
int------
bigint-----
float-------
decimal(p, s)----decimal(3,2)
(total number of digits before decimal point, total number of digits after decimal point)
boolean----- true or 1/false or 0

2. String datatypes:
====================

char()------- it contains fixed length---- char(20)
varchar()----->it contains variable length----varchar(20)
text------
enum-----it is select only one value in a predefine list.
Enum('java, 'python', 'da')

3.Data and Time DataTypes:
==========================

  data-----'yyyy-mm-dd'
  time-----'hh-mm-Ss'
  datetime-----'yyyy-mm-dd hh-mm-Ss'
  timestamp----current time

DAY-3:  >10-08-2026:
----------

Constraint:
===========

# constraints are used to rules applied in table columns.The main purpose 
  of constraints are used ensure data consistency, data integrity, data accuracy

TYPES OF CONSTRAINS:
====================
1.unique
2.not null
3.primary key
4.foreign key (relationship b/w two tables)
5.check
6.default

1>Unique:
---------
ensure all the values are unique in a column.
EX: std_id.

2> not null:
------------
every column must be contain a value.
Ex: names

3> primary key:
---------------
combination not null and unique.
Ex: adhar id

4> foreign key:
---------------
it is used to maintain the relationship between tables.
Ex: customer, menu

5>check:
----------
the column values must be contains to above mention the range of values.
Ex:age, marks

6>default:
----------
if in case no insert any date in that column that time automatically to 
insert default values.
Ex:address.

DDL COMMANDS:
=============
 
CREATE:
-------
create table table_name(col1 datatype(constraint_name) (optional),col2 datatype.....)
id
name
address
age

1.create table employee(id int, name varchar(20),address varchar(20),
       age int);
 
2.desc table_name; =>eg: desc employee; (to see or it shows the structure of table)
3.describe table_name;
4.show create table employee; (---- to see the total structure of table)
5.create table employee1 like employee; (to create another table----)
EX:desc employee1;

ALTER:
======
ADD COLUMN:
-----------  
>alter table table_name add column salary decimal(10,2);(only add one column)
 

>alter table table_name add column salary1 decimal(10,2),phonenum bigint;(add multiple column)


REMOVE COLUMN:
--------------
alter table table_name drop column colname; (remove one column)
alter table table_name drop column colname , drop column colname........etc; (remove more than one column)

RENAME COLUMN:
--------------
alter table table_name rename column  old_colname to new_column;


MODIFY DATATYPE:
---------------
>alter table table_name modify colname update datatype

ex:alter table  employee modify id bigint;

DROP:  delete the column
-----

>drop table table_name;

RENAME:
-------
> rename table old to new_name;


CREATE TADLE USING ALL CONSTRAINTS:
-----------------------------------
EX:employee:
>id, name, address, age, phonenum;
1.create table employee(id int primary key, name varchar(20) not null,
                         address varchar(20) default 'hyd',
                         age int check (age>0 and age<120),
                          phonenum bigint unique);


create table dept(did int,dname varchar(20),
                  foreign key (did) references employee(id));


Day-4:
******
add constraints with existing table:
-----------------------------------
>create table emp(id int, age int, name varchar(20),
  address varchar(20),dpid int,phonenum bigint);

primary key:
------------
>alter table emp add constraint pk_id primary key(id);
>alter table emp drop primary key;

unique:
-------
> alter table emp add constraint uk_ph unique(phonenum); 
> alter table emp drop constraint uk_ph;


check:
------
>alter table emp add constraint chk_age check(age>18;
>alter table emp drop constraint chk_age;


default and not null:
---------------------         

1.NotNull:
----------
how to add the not nullshow databases?

>alter table emp modify name varchar(20) not null;

how to remove the not null?
 
>alter table emp modify name varchar(20) Null;

default:
--------

how to add default ?
>alter table emp modify address varchar(20) default "hyd";

how to delete default?

>alter table emp modify address varchar(20);

"""if incase before drop fk after use this?
>alter table dept1 add constarint fk_did foreign key(did) refernces emp(id);"""


CONSTRAINTS TYPES:
+================+

1.Procedure constraint:
----------------------
2.Referencial constraint:
>to ensure using the foreign key constraint.

3. Entity integrity constraint:
>primary key

4.domain integrity constraints:
>using unique


DML commands:
=============
>DML stands for data manipulation language.

>the main purpose of DML commands is used to insert or manipuls=ate data into a tables , views...etc.

>1.insert
 2.update
 3.delete

1.insert:
---------
1stway:(when we know the columns):
-----------------------------------
insert into employee values(101, 'jaya' ,'kurnool', 9908025336,202);
 
2 way(we know the number of columns but don't know the order):
--------------------------------------------------------------
insert into employee(id ,name,age, address,phonenum,did)
values(101,'ram',20,'hyd', 19-897089,202);



3 way:(used to assign values to the specific column)
---------------------------------------------------
insert into employee(id,name,age)
values(103,'sam',20);

4th way: (to insert multiple records at a time)
------------------------------------------------
insert into employee(id ,name,age, address,phonenum,did)
values
(104,'ram',20,'hyd', 190887989,202);
(105,'suma',22,'jntu', 190887989,207);



>DQL:
=====
data query language . it is used to retrive data into tadles,views...etc.

data insert or not check this?
>select * from employee;
I don't know columns but don't know order tables?
>select * from table_name;

day-5:
------
already existing table to create new table?

create table new_table like  old_table;
create table employee like emp; 

how to copy existing table all data copy to newtable?
syntax: insert into from copy data table_name select * from paste to tablename
> insert into employee select * from emp;

Auto_increment:
--------------

-it is the feature of MySQL. 
-it is automatically generate the numbers 
-when we insert the new row/record

syntax : create table Student(id int primary Key auto_increment,
                               name varchar(20),age int);
-insert into student(name,age)values
          ('sam',25),('ram',30)('geetha',60);


=To retrive few columns in a table:   *main use "select" retrive data
================================
-select name, age from student;

=where cluse:
=============
where cluse is used to filter the record/rows in a table based on condition.

operators: operator is a symbol it is used to perform the operants
=========
Arithematic operators: ( mathematical operations)
----------------------
>  +, -, *, /, % 

Ex:-select name , age , age=10 from students

reational or comparision operator:  ("mainly used to cluses")
----------------------------------

1. =, >, < >=, <=, != or <>

10<50 opens big number return true

logical operators:  (it is used more than one condition)
------------------
- and, or, not 

EX: 20<40 and 10>70//f  both true
   20<40 or 20>70 ///t difference true  
not 20>80;t

bitwise operators:   it Is used to binary numbers only
------------------
- &, |, ^, <<, >>

data retreview data( select * form)
- select * from students where age>=30;

- select name, age from students where age=25 or age=60;
- select * from students where age!=25;

 alias name:
============
- alias name used to customaize the name for a columns  
- it is used to "as" to give alias name

syntax:select name , age, age-10 as sub from students;




 mysql> INSERT INTO employees
    -> (emp_name, department, salary, experience, status)
    -> VALUES
    -> ('Ravi', 'IT', 60000, 4, 1),
    -> ('Anil', 'HR', 45000, 3, 2),
    -> ('Priya', 'Finance', 70000, 6, 4),
    -> ('Sneha', 'IT', 85000, 7, 3),
    -> ('Kiran', 'Sales', 35000, 2, 1),
    -> ('Arjun', 'IT', 55000, 5, 5),
    -> ('Divya', 'HR', 40000, 4, 2),
    -> ('Rahul', 'Finance', 65000, 8, 6),
    -> ('Meena', 'Sales', 30000, 1, 1),
    -> ('Suresh', 'IT', 95000, 10, 7),
    -> ('Pooja', 'Marketing', 50000, 3, 2),
    -> ('Vijay', 'Finance', 48000, 4, 4),
    -> ('Neha', 'IT', 72000, 6, 3),
    -> ('Amit', 'Sales', 42000, 5, 1),
    -> ('Swathi', 'Marketing', 58000, 7, 5);
ERROR 1046 (3D000): No database selected
mysql> use da22;
Database changed
mysql> show tables;
+----------------+
| Tables_in_da22 |
+----------------+
| employee       |
| employees      |
| products       |
| students       |
+----------------+
4 rows in set (0.00 sec)

mysql> create table employee;
ERROR 1050 (42S01): Table 'employee' already exists
mysql> drop table emplyee;
ERROR 1051 (42S02): Unknown table 'da22.emplyee'
mysql> use da22;
Database changed
mysql> drop database employee;
Query OK, 0 rows affected (0.03 sec)

mysql> drop database employees;
ERROR 1008 (HY000): Can't drop database 'employees'; database doesn't exist
mysql> use da22;
Database changed
mysql> drop table employees;
Query OK, 0 rows affected (0.02 sec)

mysql> create table employees;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create database employees;
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO employees
    -> (emp_name, department, salary, experience, status)
    -> VALUES
    -> ('Ravi', 'IT', 60000, 4, 1),
    -> ('Anil', 'HR', 45000, 3, 2),
    -> ('Priya', 'Finance', 70000, 6, 4),
    -> ('Sneha', 'IT', 85000, 7, 3),
    -> ('Kiran', 'Sales', 35000, 2, 1),
    -> ('Arjun', 'IT', 55000, 5, 5),
    -> ('Divya', 'HR', 40000, 4, 2),
    -> ('Rahul', 'Finance', 65000, 8, 6),
    -> ('Meena', 'Sales', 30000, 1, 1),
    -> ('Suresh', 'IT', 95000, 10, 7),
    -> ('Pooja', 'Marketing', 50000, 3, 2),
    -> ('Vijay', 'Finance', 48000, 4, 4),
    -> ('Neha', 'IT', 72000, 6, 3),
    -> ('Amit', 'Sales', 42000, 5, 1),
    -> ('Swathi', 'Marketing', 58000, 7, 5);
ERROR 1146 (42S02): Table 'da22.employees' doesn't exist
mysql> use da22;
Database changed
mysql> CREATE TABLE employees (
    ->     emp_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     department VARCHAR(50),
    ->     salary DECIMAL(10,2),
    ->     experience INT,
    ->     status INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC employees;
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| emp_id     | int           | NO   | PRI | NULL    | auto_increment |
| emp_name   | varchar(50)   | YES  |     | NULL    |                |
| department | varchar(50)   | YES  |     | NULL    |                |
| salary     | decimal(10,2) | YES  |     | NULL    |                |
| experience | int           | YES  |     | NULL    |                |
| status     | int           | YES  |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> SELECT * FROM employees;
Empty set (0.00 sec)

mysql> DESC employees;
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| emp_id     | int           | NO   | PRI | NULL    | auto_increment |
| emp_name   | varchar(50)   | YES  |     | NULL    |                |
| department | varchar(50)   | YES  |     | NULL    |                |
| salary     | decimal(10,2) | YES  |     | NULL    |                |
| experience | int           | YES  |     | NULL    |                |
| status     | int           | YES  |     | NULL    |                |
+------------+---------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> INSERT INTO employees
    -> (emp_name, department, salary, experience, status)
    -> VALUES`68
    -> ('Ravi', 'IT', 60000, 4, 1),
    -> ('Anil', 'HR', 45000, 3, 2),
    -> ('Priya', 'Finance', 70000, 6, 4),
    -> ('Sneha', 'IT', 85000, 7, 3),
    -> ('Kiran', 'Sales', 35000, 2, 1),
    -> ('Arjun', 'IT', 55000, 5, 5),
    -> ('Divya', 'HR', 40000, 4, 2),
    -> ('Rahul', 'Finance', 65000, 8, 6),
    -> ('Meena', 'Sales', 30000, 1, 1),
    -> ('Suresh', 'IT', 95000, 10, 7),
    -> ('Pooja', 'Marketing', 50000, 3, 2),
    -> ('Vijay', 'Finance', 48000, 4, 4),
    -> ('Neha', 'IT', 72000, 6, 3),
    -> ('Amit', 'Sales', 42000, 5, 1),
    -> ('Swathi', 'Marketing', 58000, 7, 5);
Query OK, 15 rows affected (0.01 sec)
Records: 15  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE products (
    ->     product_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     product_name VARCHAR(50),
    ->     price DECIMAL(10,2),
    ->     quantity INT
    -> );
ERROR 1050 (42S01): Table 'products' already exists
mysql> DESC products;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| product_id   | int           | NO   | PRI | NULL    | auto_increment |
| product_name | varchar(50)   | YES  |     | NULL    |                |
| price        | decimal(10,2) | YES  |     | NULL    |                |
| quantity     | int           | YES  |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO products
    -> (product_name, price, quantity)
    -> VALUES
    -> ('Laptop', 55000, 10),
    -> ('Mouse', 800, 25),
    -> ('Keyboard', 1500, 15),
    -> ('Monitor', 12000, 8),
    -> ('Headphones', 2500, 20),
    -> ('Webcam', 3500, 12),
    -> ('Printer', 15000, 5),
    -> ('SSD', 6000, 18),
    -> ('RAM', 4000, 30),
    -> ('USB Cable', 500, 40),
    -> ('Router', 3000, 10),
    -> ('Speaker', 4500, 7);
Query OK, 12 rows affected (0.01 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM products;
+------------+--------------+----------+----------+
| product_id | product_name | price    | quantity |
+------------+--------------+----------+----------+
|          1 | Laptop       | 55000.00 |       10 |
|          2 | Mouse        |   800.00 |       25 |
|          3 | Keyboard     |  1500.00 |       15 |
|          4 | Monitor      | 12000.00 |        8 |
|          5 | Headphones   |  2500.00 |       20 |
|          6 | Webcam       |  3500.00 |       12 |
|          7 | Printer      | 15000.00 |        5 |
|          8 | SSD          |  6000.00 |       18 |
|          9 | RAM          |  4000.00 |       30 |
|         10 | USB Cable    |   500.00 |       40 |
|         11 | Router       |  3000.00 |       10 |
|         12 | Speaker      |  4500.00 |        7 |
|         13 | Laptop       | 55000.00 |       10 |
|         14 | Mouse        |   800.00 |       25 |
|         15 | Keyboard     |  1500.00 |       15 |
|         16 | Monitor      | 12000.00 |        8 |
|         17 | Headphones   |  2500.00 |       20 |
|         18 | Webcam       |  3500.00 |       12 |
|         19 | Printer      | 15000.00 |        5 |
|         20 | SSD          |  6000.00 |       18 |
|         21 | RAM          |  4000.00 |       30 |
|         22 | USB Cable    |   500.00 |       40 |
|         23 | Router       |  3000.00 |       10 |
|         24 | Speaker      |  4500.00 |        7 |
+------------+--------------+----------+----------+
24 rows in set (0.00 sec)

mysql> SELECT product_name,
    ->        price,
    ->        quantity,
    ->        price * quantity AS total_amount
    -> FROM products;
+--------------+----------+----------+--------------+
| product_name | price    | quantity | total_amount |
+--------------+----------+----------+--------------+
| Laptop       | 55000.00 |       10 |    550000.00 |
| Mouse        |   800.00 |       25 |     20000.00 |
| Keyboard     |  1500.00 |       15 |     22500.00 |
| Monitor      | 12000.00 |        8 |     96000.00 |
| Headphones   |  2500.00 |       20 |     50000.00 |
| Webcam       |  3500.00 |       12 |     42000.00 |
| Printer      | 15000.00 |        5 |     75000.00 |
| SSD          |  6000.00 |       18 |    108000.00 |
| RAM          |  4000.00 |       30 |    120000.00 |
| USB Cable    |   500.00 |       40 |     20000.00 |
| Router       |  3000.00 |       10 |     30000.00 |
| Speaker      |  4500.00 |        7 |     31500.00 |
| Laptop       | 55000.00 |       10 |    550000.00 |
| Mouse        |   800.00 |       25 |     20000.00 |
| Keyboard     |  1500.00 |       15 |     22500.00 |
| Monitor      | 12000.00 |        8 |     96000.00 |
| Headphones   |  2500.00 |       20 |     50000.00 |
| Webcam       |  3500.00 |       12 |     42000.00 |
| Printer      | 15000.00 |        5 |     75000.00 |
| SSD          |  6000.00 |       18 |    108000.00 |
| RAM          |  4000.00 |       30 |    120000.00 |
| USB Cable    |   500.00 |       40 |     20000.00 |
| Router       |  3000.00 |       10 |     30000.00 |
| Speaker      |  4500.00 |        7 |     31500.00 |
+--------------+----------+----------+--------------+
24 rows in set (0.01 sec)

mysql> SELECT COUNT(*) FROM products;
+----------+
| COUNT(*) |
+----------+
|       24 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT emp_name,
    ->        salary,
    ->        salary + 5000 AS salary_after_bonus
    -> FROM employees;
+----------+----------+--------------------+
| emp_name | salary   | salary_after_bonus |
+----------+----------+--------------------+
| Ravi     | 60000.00 |           65000.00 |
| Anil     | 45000.00 |           50000.00 |
| Priya    | 70000.00 |           75000.00 |
| Sneha    | 85000.00 |           90000.00 |
| Kiran    | 35000.00 |           40000.00 |
| Arjun    | 55000.00 |           60000.00 |
| Divya    | 40000.00 |           45000.00 |
| Rahul    | 65000.00 |           70000.00 |
| Meena    | 30000.00 |           35000.00 |
| Suresh   | 95000.00 |          100000.00 |
| Pooja    | 50000.00 |           55000.00 |
| Vijay    | 48000.00 |           53000.00 |
| Neha     | 72000.00 |           77000.00 |
| Amit     | 42000.00 |           47000.00 |
| Swathi   | 58000.00 |           63000.00 |
+----------+----------+--------------------+
15 rows in set (0.00 sec)

mysql> SELECT emp_name,
    ->        salary,
    ->        salary * 1.10 AS salary_after_increment
    -> FROM employees;
+----------+----------+------------------------+
| emp_name | salary   | salary_after_increment |
+----------+----------+------------------------+
| Ravi     | 60000.00 |             66000.0000 |
| Anil     | 45000.00 |             49500.0000 |
| Priya    | 70000.00 |             77000.0000 |
| Sneha    | 85000.00 |             93500.0000 |
| Kiran    | 35000.00 |             38500.0000 |
| Arjun    | 55000.00 |             60500.0000 |
| Divya    | 40000.00 |             44000.0000 |
| Rahul    | 65000.00 |             71500.0000 |
| Meena    | 30000.00 |             33000.0000 |
| Suresh   | 95000.00 |            104500.0000 |
| Pooja    | 50000.00 |             55000.0000 |
| Vijay    | 48000.00 |             52800.0000 |
| Neha     | 72000.00 |             79200.0000 |
| Amit     | 42000.00 |             46200.0000 |
| Swathi   | 58000.00 |             63800.0000 |
+----------+----------+------------------------+
15 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE salary > 50000;
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      3 | Priya    | Finance    | 70000.00 |          6 |      4 |
|      4 | Sneha    | IT         | 85000.00 |          7 |      3 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|      8 | Rahul    | Finance    | 65000.00 |          8 |      6 |
|     10 | Suresh   | IT         | 95000.00 |         10 |      7 |
|     13 | Neha     | IT         | 72000.00 |          6 |      3 |
|     15 | Swathi   | Marketing  | 58000.00 |          7 |      5 |
+--------+----------+------------+----------+------------+--------+
8 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE salary >= 30000
    ->   AND salary <= 60000;
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      2 | Anil     | HR         | 45000.00 |          3 |      2 |
|      5 | Kiran    | Sales      | 35000.00 |          2 |      1 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|      7 | Divya    | HR         | 40000.00 |          4 |      2 |
|      9 | Meena    | Sales      | 30000.00 |          1 |      1 |
|     11 | Pooja    | Marketing  | 50000.00 |          3 |      2 |
|     12 | Vijay    | Finance    | 48000.00 |          4 |      4 |
|     14 | Amit     | Sales      | 42000.00 |          5 |      1 |
|     15 | Swathi   | Marketing  | 58000.00 |          7 |      5 |
+--------+----------+------------+----------+------------+--------+
10 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE department = 'IT'
    ->   AND salary > 50000;
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      4 | Sneha    | IT         | 85000.00 |          7 |      3 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|     10 | Suresh   | IT         | 95000.00 |         10 |      7 |
|     13 | Neha     | IT         | 72000.00 |          6 |      3 |
+--------+----------+------------+----------+------------+--------+
5 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE department = 'IT'
    ->    OR department = 'HR';
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      2 | Anil     | HR         | 45000.00 |          3 |      2 |
|      4 | Sneha    | IT         | 85000.00 |          7 |      3 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|      7 | Divya    | HR         | 40000.00 |          4 |      2 |
|     10 | Suresh   | IT         | 95000.00 |         10 |      7 |
|     13 | Neha     | IT         | 72000.00 |          6 |      3 |
+--------+----------+------------+----------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE department IN ('IT', 'HR');
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      2 | Anil     | HR         | 45000.00 |          3 |      2 |
|      4 | Sneha    | IT         | 85000.00 |          7 |      3 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|      7 | Divya    | HR         | 40000.00 |          4 |      2 |
|     10 | Suresh   | IT         | 95000.00 |         10 |      7 |
|     13 | Neha     | IT         | 72000.00 |          6 |      3 |
+--------+----------+------------+----------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE department <> 'Finance'
    ->   AND experience > 3;
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      4 | Sneha    | IT         | 85000.00 |          7 |      3 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|      7 | Divya    | HR         | 40000.00 |          4 |      2 |
|     10 | Suresh   | IT         | 95000.00 |         10 |      7 |
|     13 | Neha     | IT         | 72000.00 |          6 |      3 |
|     14 | Amit     | Sales      | 42000.00 |          5 |      1 |
|     15 | Swathi   | Marketing  | 58000.00 |          7 |      5 |
+--------+----------+------------+----------+------------+--------+
8 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM employees
    -> WHERE salary > 40000
    ->    OR experience > 5;
+--------+----------+------------+----------+------------+--------+
| emp_id | emp_name | department | salary   | experience | status |
+--------+----------+------------+----------+------------+--------+
|      1 | Ravi     | IT         | 60000.00 |          4 |      1 |
|      2 | Anil     | HR         | 45000.00 |          3 |      2 |
|      3 | Priya    | Finance    | 70000.00 |          6 |      4 |
|      4 | Sneha    | IT         | 85000.00 |          7 |      3 |
|      6 | Arjun    | IT         | 55000.00 |          5 |      5 |
|      8 | Rahul    | Finance    | 65000.00 |          8 |      6 |
|     10 | Suresh   | IT         | 95000.00 |         10 |      7 |
|     11 | Pooja    | Marketing  | 50000.00 |          3 |      2 |
|     12 | Vijay    | Finance    | 48000.00 |          4 |      4 |
|     13 | Neha     | IT         | 72000.00 |          6 |      3 |
|     14 | Amit     | Sales      | 42000.00 |          5 |      1 |
|     15 | Swathi   | Marketing  | 58000.00 |          7 |      5 |
+--------+----------+------------+----------+------------+--------+
12 rows in set (0.00 sec)

mysql> SELECT emp_name,
    ->        salary,
    ->        MOD(salary, 1000) AS remainder
    -> FROM employees;
+----------+----------+-----------+
| emp_name | salary   | remainder |
+----------+----------+-----------+
| Ravi     | 60000.00 |      0.00 |
| Anil     | 45000.00 |      0.00 |
| Priya    | 70000.00 |      0.00 |
| Sneha    | 85000.00 |      0.00 |
| Kiran    | 35000.00 |      0.00 |
| Arjun    | 55000.00 |      0.00 |
| Divya    | 40000.00 |      0.00 |
| Rahul    | 65000.00 |      0.00 |
| Meena    | 30000.00 |      0.00 |
| Suresh   | 95000.00 |      0.00 |
| Pooja    | 50000.00 |      0.00 |
| Vijay    | 48000.00 |      0.00 |
| Neha     | 72000.00 |      0.00 |
| Amit     | 42000.00 |      0.00 |
| Swathi   | 58000.00 |      0.00 |
+----------+----------+-----------+
15 rows in set (0.00 sec)

mysql> SELECT emp_name,
    ->        salary,
    ->        salary % 1000 AS remainder
    -> FROM employees;
+----------+----------+-----------+
| emp_name | salary   | remainder |
+----------+----------+-----------+
| Ravi     | 60000.00 |      0.00 |
| Anil     | 45000.00 |      0.00 |
| Priya    | 70000.00 |      0.00 |
| Sneha    | 85000.00 |      0.00 |
| Kiran    | 35000.00 |      0.00 |
| Arjun    | 55000.00 |      0.00 |
| Divya    | 40000.00 |      0.00 |
| Rahul    | 65000.00 |      0.00 |
| Meena    | 30000.00 |      0.00 |
| Suresh   | 95000.00 |      0.00 |
| Pooja    | 50000.00 |      0.00 |
| Vijay    | 48000.00 |      0.00 |
| Neha     | 72000.00 |      0.00 |
| Amit     | 42000.00 |      0.00 |
| Swathi   | 58000.00 |      0.00 |
+----------+----------+-----------+
15 rows in set (0.00 sec)

mysql> SELECT product_name,
    ->        price,
    ->        quantity,
    ->        price * quantity AS total_amount
    -> FROM products;
+--------------+----------+----------+--------------+
| product_name | price    | quantity | total_amount |
+--------------+----------+----------+--------------+
| Laptop       | 55000.00 |       10 |    550000.00 |
| Mouse        |   800.00 |       25 |     20000.00 |
| Keyboard     |  1500.00 |       15 |     22500.00 |
| Monitor      | 12000.00 |        8 |     96000.00 |
| Headphones   |  2500.00 |       20 |     50000.00 |
| Webcam       |  3500.00 |       12 |     42000.00 |
| Printer      | 15000.00 |        5 |     75000.00 |
| SSD          |  6000.00 |       18 |    108000.00 |
| RAM          |  4000.00 |       30 |    120000.00 |
| USB Cable    |   500.00 |       40 |     20000.00 |
| Router       |  3000.00 |       10 |     30000.00 |
| Speaker      |  4500.00 |        7 |     31500.00 |
| Laptop       | 55000.00 |       10 |    550000.00 |
| Mouse        |   800.00 |       25 |     20000.00 |
| Keyboard     |  1500.00 |       15 |     22500.00 |
| Monitor      | 12000.00 |        8 |     96000.00 |
| Headphones   |  2500.00 |       20 |     50000.00 |
| Webcam       |  3500.00 |       12 |     42000.00 |
| Printer      | 15000.00 |        5 |     75000.00 |
| SSD          |  6000.00 |       18 |    108000.00 |
| RAM          |  4000.00 |       30 |    120000.00 |
| USB Cable    |   500.00 |       40 |     20000.00 |
| Router       |  3000.00 |       10 |     30000.00 |
| Speaker      |  4500.00 |        7 |     31500.00 |
+--------------+----------+----------+--------------+
24 rows in set (0.00 sec)

mysql> UPDATE employees
    -> SET salary = salary * 1.10;
Query OK, 15 rows affected (0.01 sec)
Rows matched: 15  Changed: 15  Warnings: 0

mysql> SELECT * FROM employees;
+--------+----------+------------+-----------+------------+--------+
| emp_id | emp_name | department | salary    | experience | status |
+--------+----------+------------+-----------+------------+--------+
|      1 | Ravi     | IT         |  66000.00 |          4 |      1 |
|      2 | Anil     | HR         |  49500.00 |          3 |      2 |
|      3 | Priya    | Finance    |  77000.00 |          6 |      4 |
|      4 | Sneha    | IT         |  93500.00 |          7 |      3 |
|      5 | Kiran    | Sales      |  38500.00 |          2 |      1 |
|      6 | Arjun    | IT         |  60500.00 |          5 |      5 |
|      7 | Divya    | HR         |  44000.00 |          4 |      2 |
|      8 | Rahul    | Finance    |  71500.00 |          8 |      6 |
|      9 | Meena    | Sales      |  33000.00 |          1 |      1 |
|     10 | Suresh   | IT         | 104500.00 |         10 |      7 |
|     11 | Pooja    | Marketing  |  55000.00 |          3 |      2 |
|     12 | Vijay    | Finance    |  52800.00 |          4 |      4 |
|     13 | Neha     | IT         |  79200.00 |          6 |      3 |
|     14 | Amit     | Sales      |  46200.00 |          5 |      1 |
|     15 | Swathi   | Marketing  |  63800.00 |          7 |      5 |
+--------+----------+------------+-----------+------------+--------+
15 rows in set (0.00 sec)

mysql> UPDATE employees
    -> SET salary = salary * 1.15
    -> WHERE department = 'IT';
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> UPDATE products
    -> SET price = price * 0.95;
Query OK, 24 rows affected (0.01 sec)
Rows matched: 24  Changed: 24  Warnings: 0

mysql> UPDATE products
    -> SET quantity = quantity + 10
    -> WHERE quantity < 20;
Query OK, 16 rows affected (0.01 sec)
Rows matched: 16  Changed: 16  Warnings: 0

mysql> CREATE TABLE employees (
    ->     emp_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     department VARCHAR(50),
    ->     salary DECIMAL(10,2),
    ->     experience INT,
    ->     status INT
    -> );
ERROR 1050 (42S01): Table 'employees' already exists
mysql> INSERT INTO employees
    -> (emp_name, department, salary, experience, status)
    -> VALUES
    -> ('Karthik', 'IT', 65000, 4, 1);
Query OK, 1 row affected (0.01 sec)

mysql> CREATE TABLE high_salary_employees AS
    -> SELECT *
    -> FROM employees
    -> WHERE salary > 60000;
Query OK, 9 rows affected (0.02 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> INSERT INTO employees_backup
    -> SELECT *
    -> FROM employees;
ERROR 1146 (42S02): Table 'da22.employees_backup' doesn't exist
mysql> INSERT INTO employees_backup
    -> SELECT *
    -> FROM employees
    -> WHERE department = 'IT';
ERROR 1146 (42S02): Table 'da22.employees_backup' doesn't exist
mysql> SELECT columns
    -> FROM table
    -> WHERE condition;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table
WHERE condition' at line 2
mysql> INSERT INTO table
    -> (column1, column2)
    -> VALUES
    -> (value1, value2);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table
(column1, column2)
VALUES
(value1, value2)' at line 1
mysql> INSERT INTO table1
    -> SELECT *
    -> FROM table2
    -> WHERE condition;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition' at line 4
mysql> CREATE TABLE new_table AS
    -> SELECT *
    -> FROM old_table
    -> WHERE condition;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition' at line 4
mysql>


###DAY5:
--------

Predicates/special operators:
==============================
-it is a condition. this operators meanly used to range of comparision.
-TYPES:
--------
1. Between
2.in
3.is null
4.like

1. Between:
------------
- to retrive the values between range os 10 to 20
-value>=10 and value<-20;
-value between 10 and 20;
-value not between 10 and 0;

2. In:
------

ex:
-val = 10 or val = 20
-val in(10,20);
-val not in (10, 20); not 10, 20 need another one


3. is null:
-----------
-it returns null value rows
-name is null;
-name is not  null;


4.like (interview main operator):
--------------------------------
-like operator is using to pattern matching.
-it contains 2 wildcards.
-like operator only used to varchar like ____ 4 underscore only need
1._(underscore):
----------------
-it is represent the single character.

-syntax: name like '____ ';

2.%:(strating character only A after any characters )
-----------------------------------------------------
-it is indicate zero or more characters.
name like 'a%';  0 or more charcterrs
name like '%a%;it is staring characters any character idont know but I need a charcter
name like '%a'; it is need 2 check last a charcter.
name like '%h'; it is need to check last character person
name not like '%h%';
name not like 'a%'; (not start to a character)

Is Null():
---------
salary:
-------
20000  not null assign 0
null    null assign 1
40000
null
3000

-select salary isNull(salary)from emp;
salary:
-------
0
1
0
1
0

ifNull():  iam try to assign the replace to null value to 1000

-select salary isNull(salary)from emp;
salary:
-----
20000
null
40000
null
3000
salary:
-------
20000
1000
40000
1000
3000

Syntax:
-select * from students from students;
-select * from students where id in(1,3);
-select * from students where age between 30 and 40;
-select * from students where age not between 30 and 40;
-select * from students where age is null;
-select * from students where age is  not null;
- insert into students values 
-select * from students where age is null;
-select *from students where name like 'r%' and id in(2);
-select * from students where name like %a% and age between 30 and 60;
-select age, isNull(age) from students;(is null is assign by default assign 1)
-select age ,ifNull(age,100) from students; (if null is assign manual assign 100)

structure modification(column) used ALTER
UPDATE:  data modification used to update rows
-------
-update command mainly used to manipulate data
-update table_name set updatecondition;
-update table_name set updatecondition where condition;

DELETE:
---------
-delete command is used to remove all data or particular data.
-syntax:
--------
-delete from tablename;//total data
-delete from tablename where condition;


age 30 increment 10  condition is used to 'set'
-update students set age age+10 where age=30;
-select * from students;

-delete ram table:
-delete from students where name='ram';

delete from students; (delete all rows and particular row  data in students)

>TRUNCATE = truncate table tablename;  delete total rows
           remove data immediately but not structure 
>DROP = total data and sructure
>DELETE = total data or particular data but not structure. only delete rows
 ************************************************************************************************************************************************
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    job_role VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    manager_id INT,
    email VARCHAR(100),
    bonus DECIMAL(10,2)
);

select * from employees where salary between 40000 and 60000;


select * from employees where salary not between 50000 and 80000;
select *from employees where department in(IT,HR or Finance departments)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| da22               |
| dhana_mitra        |
| employees          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
9 rows in set (0.01 sec)

mysql> CREATE TABLE employees (
    ->     emp_id INT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     department VARCHAR(30),
    ->     job_role VARCHAR(30),
    ->     salary DECIMAL(10,2),
    ->     city VARCHAR(30),
    ->     manager_id INT,
    ->     email VARCHAR(100),
    ->     bonus DECIMAL(10,2)
    -> );
ERROR 1046 (3D000): No database selected
mysql> use da22;
Database changed
mysql> CREATE TABLE employees (
    ->     emp_id INT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     department VARCHAR(30),
    ->     job_role VARCHAR(30),
    ->     salary DECIMAL(10,2),
    ->     city VARCHAR(30),
    ->     manager_id INT,
    ->     email VARCHAR(100),
    ->     bonus DECIMAL(10,2)
    -> );
ERROR 1050 (42S01): Table 'employees' already exists
mysql> drop table employees
    -> ;
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE employees (
    ->     emp_id INT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     department VARCHAR(30),
    ->     job_role VARCHAR(30),
    ->     salary DECIMAL(10,2),
    ->     city VARCHAR(30),
    ->     manager_id INT,
    ->     email VARCHAR(100),
    ->     bonus DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO employees
    -> (emp_id, emp_name, department, job_role, salary, city, manager_id, email, bonus)
    -> VALUES
    -> (101, 'Ravi',   'IT',      'Developer', 65000, 'Hyderabad', 201, 'ravi@gmail.com', 5000),
    -> (102, 'Priya',  'HR',      'Manager',    75000, 'Bangalore', NULL, 'priya@gmail.com', 8000),
    -> (103, 'Arun',   'IT',      'Tester',     45000, 'Chennai',   201, 'arun@gmail.com', NULL),
    -> (104, 'Sneha',  'Finance', 'Analyst',    55000, 'Hyderabad', 202, 'sneha@gmail.com', 4000),
    -> (105, 'Kiran',  'IT',      'Developer', 85000, 'Pune',      201, 'kiran@gmail.com', 10000),
    -> (106, 'Anjali', 'HR',      'Recruiter',  42000, 'Chennai',   202, NULL, 3000),
    -> (107, 'Vijay',  'Finance', 'Accountant', 48000, 'Bangalore', 202, 'vijay@gmail.com', NULL),
    -> (108, 'Meena',  'Sales',   'Executive',  38000, 'Hyderabad', 203, 'meena@gmail.com', 2000),
    -> (109, 'Rahul',  'Sales',   'Manager',    72000, 'Pune',      NULL, 'rahul@gmail.com', 7000),
    -> (110, 'Divya',  'IT',      'Developer',  60000, 'Bangalore', 201, NULL, 5000),
    -> (111, 'Suresh', 'Finance', 'Analyst',    52000, 'Chennai',   202, 'suresh@gmail.com', NULL),
    -> (112, 'Pooja',  'HR',      'Executive',  35000, 'Hyderabad', 102, 'pooja@gmail.com', 1500),
    -> (113, 'Amit',   'IT',      'Support',    40000, 'Pune',      201, 'amit@gmail.com', NULL),
    -> (114, 'Neha',   'Sales',   'Executive',  46000, 'Bangalore', 203, NULL, 2500),
    -> (115, 'Raj',    'IT',      'Architect',  95000, 'Hyderabad', NULL, 'raj@gmail.com', 15000);
Query OK, 15 rows affected (0.01 sec)
Records: 15  Duplicates: 0  Warnings: 0

mysql>
mysql> select * from employees where salary between 40000 and 60000;
+--------+----------+------------+------------+----------+-----------+------------+------------------+---------+
| emp_id | emp_name | department | job_role   | salary   | city      | manager_id | email            | bonus   |
+--------+----------+------------+------------+----------+-----------+------------+------------------+---------+
|    103 | Arun     | IT         | Tester     | 45000.00 | Chennai   |        201 | arun@gmail.com   |    NULL |
|    104 | Sneha    | Finance    | Analyst    | 55000.00 | Hyderabad |        202 | sneha@gmail.com  | 4000.00 |
|    106 | Anjali   | HR         | Recruiter  | 42000.00 | Chennai   |        202 | NULL             | 3000.00 |
|    107 | Vijay    | Finance    | Accountant | 48000.00 | Bangalore |        202 | vijay@gmail.com  |    NULL |
|    110 | Divya    | IT         | Developer  | 60000.00 | Bangalore |        201 | NULL             | 5000.00 |
|    111 | Suresh   | Finance    | Analyst    | 52000.00 | Chennai   |        202 | suresh@gmail.com |    NULL |
|    113 | Amit     | IT         | Support    | 40000.00 | Pune      |        201 | amit@gmail.com   |    NULL |
|    114 | Neha     | Sales      | Executive  | 46000.00 | Bangalore |        203 | NULL             | 2500.00 |
+--------+----------+------------+------------+----------+-----------+------------+------------------+---------+
8 rows in set (0.01 sec)

mysql> select * from employees where salary not between 50000 and 80000;
+--------+----------+------------+------------+----------+-----------+------------+-----------------+----------+
| emp_id | emp_name | department | job_role   | salary   | city      | manager_id | email           | bonus    |
+--------+----------+------------+------------+----------+-----------+------------+-----------------+----------+
|    103 | Arun     | IT         | Tester     | 45000.00 | Chennai   |        201 | arun@gmail.com  |     NULL |
|    105 | Kiran    | IT         | Developer  | 85000.00 | Pune      |        201 | kiran@gmail.com | 10000.00 |
|    106 | Anjali   | HR         | Recruiter  | 42000.00 | Chennai   |        202 | NULL            |  3000.00 |
|    107 | Vijay    | Finance    | Accountant | 48000.00 | Bangalore |        202 | vijay@gmail.com |     NULL |
|    108 | Meena    | Sales      | Executive  | 38000.00 | Hyderabad |        203 | meena@gmail.com |  2000.00 |
|    112 | Pooja    | HR         | Executive  | 35000.00 | Hyderabad |        102 | pooja@gmail.com |  1500.00 |
|    113 | Amit     | IT         | Support    | 40000.00 | Pune      |        201 | amit@gmail.com  |     NULL |
|    114 | Neha     | Sales      | Executive  | 46000.00 | Bangalore |        203 | NULL            |  2500.00 |
|    115 | Raj      | IT         | Architect  | 95000.00 | Hyderabad |       NULL | raj@gmail.com   | 15000.00 |
+--------+----------+------------+------------+----------+-----------+------------+-----------------+----------+
9 rows in set (0.00 sec)

mysql> select *from employees where department in(IT,HR or Finance departments);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'departments)' at line 1
mysql> select *from employees where department in(IT,HR, Finance departments);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'departments)' at line 1
mysql> select *from employees where department in('IT','HR' , 'Finance departments');
+--------+----------+------------+-----------+----------+-----------+------------+-----------------+----------+
| emp_id | emp_name | department | job_role  | salary   | city      | manager_id | email           | bonus    |
+--------+----------+------------+-----------+----------+-----------+------------+-----------------+----------+
|    101 | Ravi     | IT         | Developer | 65000.00 | Hyderabad |        201 | ravi@gmail.com  |  5000.00 |
|    102 | Priya    | HR         | Manager   | 75000.00 | Bangalore |       NULL | priya@gmail.com |  8000.00 |
|    103 | Arun     | IT         | Tester    | 45000.00 | Chennai   |        201 | arun@gmail.com  |     NULL |
|    105 | Kiran    | IT         | Developer | 85000.00 | Pune      |        201 | kiran@gmail.com | 10000.00 |
|    106 | Anjali   | HR         | Recruiter | 42000.00 | Chennai   |        202 | NULL            |  3000.00 |
|    110 | Divya    | IT         | Developer | 60000.00 | Bangalore |        201 | NULL            |  5000.00 |
|    112 | Pooja    | HR         | Executive | 35000.00 | Hyderabad |        102 | pooja@gmail.com |  1500.00 |
|    113 | Amit     | IT         | Support   | 40000.00 | Pune      |        201 | amit@gmail.com  |     NULL |
|    115 | Raj      | IT         | Architect | 95000.00 | Hyderabad |       NULL | raj@gmail.com   | 15000.00 |
+--------+----------+------------+-----------+----------+-----------+------------+-----------------+----------+
9 rows in set (0.00 sec)

mysql> select *from employees where department not in('IT','HR' ,'Sales departments');
+--------+----------+------------+------------+----------+-----------+------------+------------------+---------+
| emp_id | emp_name | department | job_role   | salary   | city      | manager_id | email            | bonus   |
+--------+----------+------------+------------+----------+-----------+------------+------------------+---------+
|    104 | Sneha    | Finance    | Analyst    | 55000.00 | Hyderabad |        202 | sneha@gmail.com  | 4000.00 |
|    107 | Vijay    | Finance    | Accountant | 48000.00 | Bangalore |        202 | vijay@gmail.com  |    NULL |
|    108 | Meena    | Sales      | Executive  | 38000.00 | Hyderabad |        203 | meena@gmail.com  | 2000.00 |
|    109 | Rahul    | Sales      | Manager    | 72000.00 | Pune      |       NULL | rahul@gmail.com  | 7000.00 |
|    111 | Suresh   | Finance    | Analyst    | 52000.00 | Chennai   |        202 | suresh@gmail.com |    NULL |
|    114 | Neha     | Sales      | Executive  | 46000.00 | Bangalore |        203 | NULL             | 2500.00 |
+--------+----------+------------+------------+----------+-----------+------------+------------------+---------+
6 rows in set (0.00 sec)


DAY-7:
***********************************
limit:
-----------
limit is used restrict the retrive rows. iwant particular rows.
syntax:
---------  
select * from product limit no. of rows;
select * from product limit 5;
select * from product limit 5;


***AGREEGATE FUNCTIONS:  
-------------------------
* THE MAIN PURPOSE OF AGREEGATE FUNCTIONS IS USED TO PERFORM MATHEMATICAL CALCULATION IN MULTIPLE ROWS AND RETURN SINGLE VALUE.

5 TYPES OF AGREEGATE FUNCTIONS:
------------------------------------
1.COUNT(*);
2.SUM(column name);
3.AVG(columnname)
4.MAXcolumn name)
5.MIN(colname)

1.COUNT:
---------
-IT RETURNS NO.OF ROWS COUNT VALUE.  total rows return
SYNTAX :select count(*) from product;
      -select count(*) as total_count from product;


-------
2. SUM:
------
-IT RRETURN A SUM OF ALL VALUES IN A COLUMN
syntax: select sum(quantity)from product;


3.AVG
-----
-- IT RETURN A AVG OF ALL VALUES IN A COLUMN
syntax: select avg(quantity)from product;

4.MAX:
------
-TO RETURN A MAXIMUM VALUE IN COLUMN.
syntax: select max(price)from product;

5.MIN:
------
- TO RETURN A MINIMUM VALUE IN COLUMN
syntax: select min(price) from product;
  
WHERE CALUSE: TO FILTER THE ROWS

GROUP BY CALUSE:
------------------
-to divide the data into a group of same values. in column
-syntax: select * from category from product group by category;
        - select category,count(*) from product
           group by category;
#find the total quantity?
- select category, sum (quantlty) from product
   group by category;
#find the avg of each category? 
-select catogery, avg(quantity)from product group br product;
#find the max of each category?
-select category,max(price) from product group by category;
#find the min of each category?
=======to view the table structureis used to desc table name
DAY8:
-----
-How to add the new column an existing  table at particular place.
-table creating:
-----------------
create table  student(id int , name varchar(20), age int);
-to add the column at particular column? at first
+alter table student add column email varchar(20) first;
+alter table student add column dob date after name;

cse - 10
ece - 12
mech - 5
civil - 8
-select dept, count(*) from student group by dept;
 where group by caluse having clause different

**having clause:
-----------------
-the having clause is used to filter the groups of data.
-it is used to agreegate functions
-having clause written  into a after group by clause
-having clause is followed by groupby clause

find the dept whose dept students is greater than 1o?
--------------------------------------------------------
-select dept,count(*)from student group by dept;
-select dept,count(*)as a tcount from student group by dept having tcount>10;

-select category, sum(quantity) from product group by category;
-select category, sum(quantity) from product group by category having sum(quantity)>100;

to find the maximum price of each category and to retrive only which category maximum price is greater than 50000?
---------------------------------------------------------------------
-select category, max(price) from product group by category;
--select category, max(price) from product group by category having max(price)>50000;

ORDER BY clause :
----------------
ORDER BY clause is used to sort values based on column
syntax:
-------
ASC order: It is represent by ascending order
DESC order: it is represented by descending order. order is defined by default descending order.

-the default nature of order by clause is ascending order
syntax:
-------
select *from product order by price;
select *from product order by price asc;
select *from product order by price desc;

find the each category count and to retrive  categories is ace order?
-select category,count(*) as tcount from product group by category order by tcount

writing order:
--------------
-where
-groupby
-having
-order by
-limit

Distinct clause:
---------
-it is used to remove the duplicates or find the unique data
- In one particular column remove the duplicates 
-select distinct supplier_city from product;

_____________________DAY-9______________________________

Numeric functions  
-----------------
numeric functional in sql:

1. round():
----------
-it return a round of value at specified no.of decimal places.
-round(123.456,2);  123.46 last number big so print 6. if incase last number small before the number ; 123.453; 123.45
--round(123.456,2);  123.46
-round(123.456);  123
-round(123.453,-2); 100
-round(123.456,-1);  123.8
-round(1542.785,-1)//1540
-round(1542.785,-2)//1500
-round(1542.785,-3)//1000
-

-select round(1542,-3);2000


2.sqrt()
---------
it return a sqrt of value.
select sqrt(4);2
3.power():
----------
-it 
select power(3,2);9
4.mod():
-------

select mod(10,3);1
5. abs():
-----------

6.sign():
---------
if we give the positive retrun 1
if we give the nagetive return -1
if we give the zero return 0
-select sign(90);1
-select sign(-90);-1
-select sign(0);0
7.CEIL():
---------
-it return nearest higher value.
-select ceil(20.8);21

8.FLOOR():
---------
-it return nearest lower value without decimals.
-select floor (20.4);20
9.RAND():
---------
-it returns random decimal values between 0 and 1.

-select rand();0.5089465589345866
-select rand()*100; 41.99502602405383
-select floor (rand()*100);53

10.GREATEST():
-------------
-it return a maximum value in given values.
-select greatest(20,70,30); 70

11.LEAST():
----------
-it return a minimum value in given values
-select least(20,70,30);20

mod it return a remainder value

String Funtions in SQL:
-------------------------
1.UPPER():
----------
- to convert all characters  into uppercase
>select upper('Mysql'):MYSQL

2.LOWER():
------------
-it converts all all characters into a lowercase.
>select lower('MYSQL');mysql
3.LENGTH:
----------
-it return a length of given string.
>select length('mysql');5
4. CHAR_LENGTH:
-----------------
- it return total count of each characters into given string.
>select char_length('mysql');

5.SUBSTRING:
----------
-to extract the particular range of string.
>select substring('MySQL developer',1,5);mysql

6.LEFT():
---------
-to retrun particular range of charcters from left side
>select left('mysql developer',7;mysql d
7.RIGHT:
---------
-to return particular range of charcters from right side
>select right('MySQL develope',7);veloper
8.CONCAT:
---------
-combine the two or more strings 
>select concat('mysql developer');mysqldeveloper
9.CONCAT_WS():
----------------
- it is used tocombine the two or more strings seperate with seperator
>select concat_ws('-', 'mysql','developer');mysql-developer
>select concat_ws(',', 'mysql','java');mysql,java

10.REPLACE():
----------------
-it is used to replace the old string to new String
>select replace('java','a','@');j@v@

11.TRIM():
------------
-it removes only frist &last spaces
>select trim('  mysql  ');mysql

12.LPAD():
--------------
-to add the character at left side to reach length if string
>select lpad('mysql',10,'*');*****MySQL

13.RPAD():
-----------
-to add the character at right side to reach length if string

>select rpad('mysql',10,'*');mysql********

14.LOCATE():
------------
-to return a locate value in a string
>select locate('a','apple');1
>select locate('developer', 'mysql developer');7(m1y2s3q4l5_6d7)





















































