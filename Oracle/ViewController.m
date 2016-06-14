//
//  ViewController.m
//  Oracle
//
//  Created by Karma on 16/6/14.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 字符型:
 char(n) nchar(n)         :自动补空格 后者存储汉字较多
 varchar2(n) varnchar2(n) :无需补充
 数值型:
 NUMBER(p,s):p是有效数字 s小数点的位数
 FLOAT(n)
 日期型
 DATE:
 TIMESTAMP:精确时间
 其它:BLOB CLOB
 
 
 管理表:
 创建:
 CREATE TABLE table_name
 (
 CREATE TABLE userinfo
 (id number(6,0),
 username varchar2(20),
 userpwd varchar2(20),
 email varchar2(30),
 regate date
 );
 修改表(仅仅是结构)
 添加字段:alter table userinfo
 add remarks varchar(500);
	修改数据类型:数据类型 数据(最好表没有数据)
 alter table userinfo
 modify userpwd number(6,0);
 `		   alter table userinfo
 modify remarks varchar2(400);
	删除行:alter table userinfo
 drop column remarks;
	修改字段名:alter table userinfo
	rename column email to e_mail;
	修改表名:rename userinfo to new_userinfo;
 删除表:删除表中全部数据:truncate table new_userinfo;
 删除表:drop table new_userinfo;
 
 操作表数据:
 添加数据:
	所有字段添加值:insert into userinfo
 values(1,'xxx','123','xxx@126.com',sysdate);
	指定字段添加值:insert into userinfo(id,username,userpwd)
 values(2,’yay’,’123’);
	添加默认值:
	创建时
	create table userinfo1
	(
	id number(6,0),
	regdate date default sysdate
	);
	修改:
	alter table userinfo
	modify e_mail default ‘无’;
	复制数据:
 建表时:全部:create table userinfo2
 as
 select *from userinfo;
 部分:create table userinfo3
 as
 select id,username userinfo;
 添加时:insert into userinfo2
 select *from userinfo;
 修改数据:
 无条件更新:
 update userinfo
 set userpwd='11111';
 有条件更新:
 update userinfo
 set userset userpwd='11111'
 where username=‘xxx’;
 删除数据:delete from user info
 where username=“yat”;
 
 约束:
 非空:
	创建时:CREATE TABLE userinfo_1
	(id number(6,0),
	username varchar2(20) not null,
	userpwd varchar2(20) not null,
	);
	更改:alther table userinfo
 modify username varchar2(20) not null;
 主键约束 非空 唯一
 一张表只能一个 主键可以由多个字段构成
 
 
 创建时:CREATE TABLE userinfo_p
 (id number(6,0) primary key,
 username varchar2(20) ,
 userpwd varchar2(20));
 联合主键
 CREATE TABLE userinfo_p1
 (id number(6,0),
 username varchar2(20),
 userpwd varchar2(20));
 constraint pk_id_username primary key(id,username));
 
 [
 查询表的约束 表名必须大写
 desc user_constraints
 select constraint_name from user_constraints where table_name='USERINFO_P3'
 ]
 
 修改:alter table userinfo
 add constraint pk_id primary key(id);
 修改约束名字:
 alter table userinfo
 rename constraint pk_id to new_pk_id;
 
 删除约束:
 暂时不用约束:alter table userinfo
 disable constraint new_pk_id;
 
 查看状态:
 select constraint_name,status from user_constraints where table_name='USERINFO';
 
 直接删除:alter table userinfo
 drop constraint new_pk_id;
 
 alter table userinfo
 drop primary key;
 
 外键约束:
 设置外键约束时,主表字段必须为主键
 主从表相应字段同一数据类型
 从表中外键字段都来源主表
 创建时:
 主表
 create table typeinfo
 (id varchar2(20) primary key,
 typename varchar2(20));
 从表
 create table typeinfo_f
 (id varchar2(20) primary key,
 typename varchar2(20),
 typeid_new varchar2(10) references typeinfo(id));
 
 使用级联删除创建外键约束:
 create table typeinfo_f3
 (id varchar2(20) primary key,
 typename varchar2(20),
 typeid_new varchar2(10),
 constraint fk_typeid_new1 foreign key(typeid_new)references typeinfo(id) on delete cascade);
 
 修改是添加:
 alter table typeinfo_f4
 add constraint fk_typeid_alter foreign key(id)references typeinfo(id);
 
 删除
 修改状态:alter table typeinfo_f4
 disable constraints FK_TYPEID_ALTER;
 
 删除外键约束:alter table typeinfo_f4
 drop constraint  FK_TYPEID_ALTER;
 
 主键约束和唯一越是区别;
 
 唯一约束:
 
 创建时create table userinfo_u
 (id varchar2(20) primary key,
 username varchar2(20) unique,
 userpwd varchar2(20)
 );
 
 create table userinfo_u1
 (
 username varchar2(20),
 userpwd varchar2(20),
 constraint un_username unique(username)
 );
 修改
 alter table userinfo_u3
 add constraint un_username_new unique(username);
 删除类似;
 
 检查约束
 创建:
 
 列级约束:create table userinfo_c
 (id varchar2(20) primary key,
 username varchar2(20),
 salary number(5,0) check(salary>0)
 );
 表级约束:create table userinfo_c1
 (id varchar2(20) primary key,
 username varchar2(20),
 salary number(5,0) ,
 constraint ck_salary check(salary>0));
 
 修改:
 alter table userinfo_c2
 add constraints ck_salary_new check(salary>0);
 
 删除类似;
 
 查询:
 select *from table name
 
 字段更名:desc userinfo
	col username heading 用户名;
 设置排版格式:
 col username format a10;
 设置数值保留小数格式:
 col salary format $9999.9;
 清除格式:
 col username clear;
 */
@end
