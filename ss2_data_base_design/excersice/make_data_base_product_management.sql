create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer(
cID int primary key auto_increment,
cName varchar(45) not null,
cAge int -- check(cAge>=14)
);

create table `order`(
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
create table order_detail(
oID int,
pID int,
odQTY int default 0,
primary key (oID, pID),
foreign key (oID) references `order` (oID),
foreign key (pID) references product (pID)
);

insert into quan_ly_ban_hang.customer (cName, cAge) 
values ('Minh Quan',10),
('Ngoc Oanh',20),
('Hong Ha',50);

insert into `quan_ly_ban_hang`.`order` (`oID`, `cID`, `oDate`, `oTotalPrice`) values ('1', '1', '2006-03-21',null);
insert into `quan_ly_ban_hang`.`order` (`oID`, `cID`, `oDate`,`oTotalPrice` ) values ('2', '2', '2006-03-23',null);
insert into `quan_ly_ban_hang`.`order` (`oID`, `cID`, `oDate`, `oTotalPrice`) values ('3', '1', '2006-03-16',null);

insert into `quan_ly_ban_hang`.`product` (`pID`, `pName`, `pPrice`) values ('1', 'May Giat', '3');
insert into `quan_ly_ban_hang`.`product` (`pID`, `pName`, `pPrice`) values ('2', 'Tu Lanh', '5');
insert into `quan_ly_ban_hang`.`product` (`pID`, `pName`, `pPrice`) values ('3', 'Dieu Hoa', '7');
insert into `quan_ly_ban_hang`.`product` (`pID`, `pName`, `pPrice`) values ('4', 'Quat', '1');
insert into `quan_ly_ban_hang`.`product` (`pID`, `pName`, `pPrice`) values ('5', 'Bep Dien', '2');


insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('1', '1', '3');
insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('1', '3', '7');
insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('1', '4', '2');
insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('2', '1', '1');
insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('3', '1', '8');
insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('2', '5', '4');
insert into `quan_ly_ban_hang`.`order_detail` (`oID`, `pID`, `odQTY`) values ('2', '3', '3');

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select `order`.oID, `order`.oDate, `order`.oTotalPrice
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select  customer.cName,  product.pName, order_detail.oDQTY
from customer 
join `order` on customer.cID = `order`.cID
join order_detail on `order`.oID = order_detail.oID
join product on order_detail.pID = product.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select  customer.cName
from customer
left join `order` on customer.cID = `order`.cID
where `order`.cID is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
select `order`.oID, `order`.oDate, sum(pPrice * odQTY) as `tong tien`
from `order` 
join order_detail on `order`.oID = order_detail.oID
join product on product.pID = order_detail.pID
group by `order`.oId;