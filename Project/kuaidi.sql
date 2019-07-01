#设置客户端连接服务器端的编码
set names utf8;
#丢弃数据库
drop database if exists kuaidi;
#创建数据库，设置存储的编码
create database kuaidi charset=utf8;
#使用数据库
use kuaidi;
#创建数据表
create table user_table(
	kid int primary key,				#所属快递编号
	knum bigint,						#快递单号
	sender_idcard varchar(18),			#寄件人身份证号
	sender_name char(5),				#寄件人姓名
	recipients_name char(5),			#收件人姓名
	sender_phone varchar(11),			#寄件人电话
	recipients_phone varchar(11),		#收件人电话
	courier_phone varchar(11),			#快递员电话
	sender_address varchar(50),			#寄件人地址
	recipients_address varchar(50),		#收件人地址
	isInsurance bool					#是否保险
)
#插入数据
insert into user_table values(
	1,							#所属快递编号(顺丰)
	1234567891011121314,		#快递单号
	1234567891011121314,		#寄件人身份证号
	"小明",						#寄件人姓名
	"小华",						#收件人姓名
	13800138000,				#寄件人号码
	13800138000,				#收件人号码
	13800138000,				#快递员号码
	"广东深圳",					#寄件人地址
	"广东广州",					#收件人地址
	1							#是否保险
);