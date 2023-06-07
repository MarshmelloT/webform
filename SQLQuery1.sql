
use test
go
create table UserInfo
(
	UserID int primary key identity(1,1),--�û����
	UserName varchar(50) not null,--�û�����
	UserPass varchar(50) not null--�û�����
)
create table BookTypeInfo
(
	BookTypeID int primary key identity(1,1),--ͼ����
	BookTypeName varchar(30) not null--ͼ������
)
create table BookInfo
(
	BookID int primary key identity(1,1) ,--�鼮���
	BookName varchar(30) not null,--�鼮����
	BookType int not null,--�鼮����
	BookPrice varchar(20) not null,--�鼮�۸�
	IsLon bit default(0) not null,--�Ƿ���
	Addtime datetime default(getdate()) not null,--����ʱ��
	Remark varchar(100) --��ע
)
insert into UserInfo
values('admin01','123'),
('admin02','123'),
('admin03','123')
go
insert into BookTypeInfo
values('С˵'),
('��ѧ'),
('��ʷ')
go
insert into BookInfo
values('ˮ䰴�','1','200','1','2017-01-01','null'),
('ƽ��������','2','88','1','2017-02-02','null'),
('��ӡ����','3','77','0','2017-03-03','null')
select * from UserInfo
select * from BookTypeInfo
select * from BookInfo

delete from UserInfo where UserID>3