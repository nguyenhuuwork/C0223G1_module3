create database product_test;
use product_test;

create table product(
id int primary key auto_increment,
product_code varchar(50),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(50),
product_status bit(1)
);

insert into product_test.product (product_code,product_name, product_price, product_amount, product_description, product_status)
values('1', 'Honda',35,2,'Tiet kiem xang',1),
('2','Piaggio',50,4,'Thoi trang',1),
('3','Yamaha',32,1,'Toc do',0),
('4','Suzuki',28,3,'Co Trang',1);

select*
from product;

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

create unique index index_product_code
on product(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

create index index_product_name_price
on product (product_name, product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

explain select*from product;


-- So sánh câu truy vấn trước và sau khi tạo index

select*
from product;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

create view product_new_add (product_code, product_name, product_price, product_status) as 
select product_code, product_name, product_price, product_status
from product;


-- Tiến hành sửa đổi view

update product
set product_price = 42
where product_name = 'Honda';

 -- Tiến hành xoá view 
 
drop view product_new_add;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure display_all_customer()
begin 
select*from product_test;
end //
call display_all_customer();

-- Tạo store procedure thêm một sản phẩm mới
-- Trong mysql khong cung cap len sua stored nen chung ta phai phai chay len tao moi

demiliter //
create procedure display_procedure_new()
begin
select*from product_test;
end //

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure  update_by_product_name (in product_name_change varchar(50), out count int)
begin
select*
from product_test p
where p.product_name = product_name_change;
end //

call update_by_product_name ('charily', @count);
select @count;

-- Tạo store procedure xoá sản phẩm theo id

Drop procedure;
