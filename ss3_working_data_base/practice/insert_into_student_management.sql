create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;
create table class(
class_id int primary key auto_increment,
class_name varchar(45),
start_date date,
status bit(1)
);
create table student(
student_id int primary key auto_increment,
student_name varchar(45),
address varchar(45),
phone varchar(45),
status bit(1),
class_id int,
foreign key (class_id) references class (class_id)
);
create table `subject`(
sub_id int primary key auto_increment,
sub_name varchar(45),
credit int,
status bit(1)
);
create table mark(
mark_id int primary key auto_increment,
sub_id int,
foreign key (sub_id) references `subject` (sub_id),
student_id int,
foreign key (student_id) references student (student_id),
mark float,
exam_time int
);
insert into quan_ly_sinh_vien.class (class_id,class_name,start_date,status)
values (1,'A1','2008-12-20',1),
(2,'A2','2008-12-22',1),
(3,'A3',current_date(),0);
insert into  quan_ly_sinh_vien.student (student_id,student_name,address,phone,status,class_id)
values (1,'Hung','Ha Noi','0912113113',1,1),
(2,'Hoa','Hai Phong','',1,1),
(3,'Manh','HCM','0123123123',0,2);
insert into quan_ly_sinh_vien.subject (sub_id,sub_name,credit,status)
values (1,'CF',5,1),
(2,'C',6,1),
(3,'HDJ',5,1),
(4,'RDBMS','10',1);
insert into quan_ly_sinh_vien.mark (mark_id,sub_id,student_id,mark,exam_time)
values (1,1,1,8,'1'),
(2,1,2,10,2),
(4,1,3,9,2),
(3,2,1,12,1);

select*from student;
select student_name, status, student_id from student
where status =1;
select*from `subject`
where (credit<10);

select s.student_id, s.student_name, c.class_name
from student s join class c on s.class_id = c.class_id
where (class_name ='A1');

select s.student_id, s.student_name, sub.sub_name, m.mark
from student s join mark m on s.student_id= m.mark_id
               join `subject` sub on m.sub_id = sub.sub_id
               where (sub_name ='CF');
select student_name from student;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select student_name
from student
where student_name like 'h%';
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select class_id, class_name
from class
where month(start_date) =12; 
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.    
select sub_id, sub_name, credit
from `subject`
where credit between 3 and 5; 
-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
set sql_safe_updates = 0;
update student
set class_id = 2
where student_name = 'Hung';
set sql_safe_updates = 1;
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select student_name, sub_name, mark 
from student 
join mark on student.student_id = mark.student_id
join `subject` on `subject`.sub_id = mark.sub_id
order by mark.mark desc, student.student_name;

-- Hiển thị số lượng sinh viên ở từng nơi
 insert into quan_ly_sinh_vien.student (student_name,address,phone,status,class_id)
 values ('Long','HCM','1231231232',1,1);
 
select student.address, count(student.student_id)
from student
group by student.address;

-- Tính điểm trung bình các môn học của mỗi học viên

select student.student_name, avg(mark.mark)
from student 
join mark 
on student.student_id = mark.student_id
group by student_name;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15

select student.student_name, avg(mark.mark)
from student 
join mark
on student.student_id = mark.student_id
group by student_name
having avg(mark) > 8;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.

select student.student_name, student.student_id, avg(mark.mark)
from student 
join mark
on student.student_id = mark.student_id
group by student_id
limit 2;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

select*
from `subject`
order by credit desc
limit 1;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

select `subject`.sub_id, `subject`.sub_name, mark.mark 
from `subject`
join mark
on `subject`.sub_id=mark.sub_id
order by mark desc
limit 1;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select student.student_id, student.student_name, avg(mark.mark)
from student
join mark
on student.student_id=mark.student_id
group by student.student_id







