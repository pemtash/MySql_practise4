show databases;
use sys;
use pem;
show tables;
select * from customers;
select * from participants;

# JOINING tables
# a) query data from multiple tables using inner join;

use dsdb;
show tables;
select * from authors;
select * from books;
select * from gokarna;
select * from meals;
select * from myemp;
select * from students;
select * from tt;
select * from myclass;

# INNER JOIN
# only mathcing rows
select st.sid, st.course, st.name, mc.age, mc.course from students as st 
inner join myclass as mc on st.course = mc.course;
# 19:44:20	select st.sid, st.name, st.course, mc.age, from students as st  inner join myclass as mc on st.course = mc.course	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from students as st  inner join myclass as mc on st.course = mc.course' at line 1	0.000 sec

# CROSS JOIN
# all rows from both tables
select * from students cross join myclass;

# query data from multiple tables using left join:
# all rows from left table;
select * from myclass;
select mc.sid, mc.sname, mc.age, mc.course, st.name, st.sid from
myclass as mc left outer join students as st on mc.sid = st.sid;

# query data from multiple tables using right join;
# all rows from right table;
select mc.sid, mc.sname, mc.age, st.name, st.sid from myclass as mc
right outer join students as st on mc.sid = st.sid;

