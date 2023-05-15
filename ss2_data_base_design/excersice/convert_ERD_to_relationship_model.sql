create database QuanLyNhapXuat;
use QuanLyNhapXuat;
create table nha_cung_cap(
ma_nha_cung_cap int primary key auto_increment,
ten_nha_cung_cap varchar(50) not null,
dia_chi varchar(50) not null
);
create  table dien_thoai_nha_cung(
ma_nha_cung_cap int,
foreign key (ma_nha_cung_cap) references nha_cung_cap (ma_nha_cung_cap),
so_dien_thoai varchar(15) 
);
create table don_dat_hang(
so_don_hang int primary key auto_increment,
ngay_don_hanh date not null,
ma_nha_cung_cap int,
foreign key (ma_nha_cung_cap) references nha_cung_cap (ma_nha_cung_cap)
);
create table vat_tu(
ma_vat_tu int primary key auto_increment,
ten_vat_vu varchar(50) not null
);
create table chi_tiet_don_hang(
so_don_hang int,
foreign key (so_don_hang) references don_dat_hang (so_don_hang),
ma_vat_tu int primary key auto_increment,
foreign key (ma_vat_tu) references vat_tu (ma_vat_tu)
);
create table phieu_xuat(
so_Px int primary key auto_increment,
ngay_xuat date not null
);
create table chi_tiet_phieu_xuat(
so_Px int,
foreign key (so_Px) references phieu_xuat (so_Px),
ma_vat_tu int,
foreign key (ma_vat_tu) references vat_tu ( ma_vat_tu),
don_gia_xuat float check(don_gia_xuat>=0),
so_luong_xuat int check(so_luong_xuat>=0)
);
create table phieu_nhap(
so_PN int primary key auto_increment,
ngay_nhap date not null
);
create table chi_tiet_phieu_nhap(
so_PN int,
foreign key (so_PN) references phieu_nhap (so_PN),
ma_vat_tu int,
foreign key (ma_vat_tu) references vat_tu (ma_vat_tu),
don_gia_nhap float check(don_gia_nhap>=0),
so_luong_nhap float check(so_luong_nhap>=0)
);

