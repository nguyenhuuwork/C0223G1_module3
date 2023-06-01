create database demo;
use demo;
create table users(
id int(3) not null primary key auto_increment,
name varchar(120) not null,
email varchar(220) not null,
country varchar(220) 
);

insert into users (name, email, country) values	("Minh","minh@codegym.com.vn","VietNam");
insert into users (name,email, country) values ("Minh", "nguyenquoc@codegym.com.vn","VietNam");

