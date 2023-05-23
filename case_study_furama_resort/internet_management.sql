create database internet_management;
use internet_management;

create table type_computer(
id_type_computer int primary key auto_increment,
name_type_computer varchar(50)
);

create table type_customer (
id_type_customer int primary key auto_increment,
name_type_customer varchar(50)
);

create table additional_service (
id_additional_service int primary key auto_increment,
name_service varchar(50)
);

create table computer(
id_computer int primary key auto_increment,
location varchar(50),
id_type_computer int,
foreign key (id_type_computer) references type_computer (id_type_computer) 
);

create table customer (
id_customer int primary key auto_increment,
name_customer varchar(50),
phone_number varchar(50),
email varchar(50),
id_type_customer int,
foreign key (id_type_customer) references type_customer (id_type_customer)
);


create table service (
id_service int primary key auto_increment,
start_time datetime,
end_time datetime,
price double,
id_computer int, 
foreign key (id_computer) references computer (id_computer),
id_customer int,
foreign key (id_customer) references customer (id_customer)
);

create table service_detail (
id_service_detail int primary key auto_increment,
id_service int, 
foreign key (id_service) references service (id_service),
id_additional_service int,
foreign key (id_additional_service) references additional_service  (id_additional_service),
quantity int
);




