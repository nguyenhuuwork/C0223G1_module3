create database QuanLyBanHang;
use QuanLyBanHang;
create table customer(
cID int primary key auto_increment,
cName varchar(45) not null,
cAge int check(cAge>=14)
);
create table older(
oID int primary key auto_increment,
cID int,
foreign key (cID) references customer(cID),
oDate date not null,
oTotalPrice float default 1
);
create table product(
pID int primary key auto_increment,
pName varchar(45) not null,
pPrice float default 0
);
create table OderDetail(
oID int,
foreign key (oID) references older (oID),
pID int,
foreign key (pID) references product (pID),
odQTY int default 0
);