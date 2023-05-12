create database student_management;
use student_management;
create table Class(
id int primary key auto_increment,
`name` varChar(50)
);
create table Teacher(
id int primary key auto_increment,
`name` varChar(50),
age int,
country varChar(50)
);

