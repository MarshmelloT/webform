
use test
go
create table UserInfo
(
	UserID int primary key identity(1,1),--用户编号
	UserName varchar(50) not null,--用户名称
	UserPass varchar(50) not null--用户密码
)
create table BookTypeInfo
(
	BookTypeID int primary key identity(1,1),--图书编号
	BookTypeName varchar(30) not null--图书名称
)
create table BookInfo
(
	BookID int primary key identity(1,1) ,--书籍编号
	BookName varchar(30) not null,--书籍名称
	BookType int not null,--书籍类型
	BookPrice varchar(20) not null,--书籍价格
	IsLon bit default(0) not null,--是否借出
	Addtime datetime default(getdate()) not null,--购买时间
	Remark varchar(100) --备注
)
insert into UserInfo
values('admin01','123'),
('admin02','123'),
('admin03','123')
go
insert into BookTypeInfo
values('小说'),
('文学'),
('历史')
go
insert into BookInfo
values('水浒传','1','200','1','2017-01-01','null'),
('平凡的世界','2','88','1','2017-02-02','null'),
('神印王座','3','77','0','2017-03-03','null')
select * from UserInfo
select * from BookTypeInfo
select * from BookInfo

delete from UserInfo where UserID>3