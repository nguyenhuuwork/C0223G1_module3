create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
MaHS int primary key auto_increment,
TenHS varchar(45),
NgaySinh date,
Lop varchar(45),
GT varchar(45)
);
create table MonHoc(
MaMH int primary key auto_increment,
TenMH varchar(45)
);
create table BangDiem(
MaHS int,
foreign key (MaHS) references HocSinh (MaHS),
MaMH int,
foreign key (MaMH) references MonHoc (MaMH),
DiemThi double,
NgayKT date
);
create table GiaoVien(
MaGV int primary key auto_increment,
TenGV varchar(45),
SDT varchar(45)
);
alter table MonHoc add MaGV int;
alter table MonHoc add constraint MaGV foreign key (MaGV) references GiaoVien (MaGV);
