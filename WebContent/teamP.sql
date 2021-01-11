SELECT * FROM tabs

create table user_tbl (
userNum number primary key,
userId varchar2(20) not null,
userPassword varchar2(20) not null,
userName varchar2(15) not null,
userNickname varchar2(30) default '별명없음',
userAddress varchar2(30),
userDay date default sysdate
)

insert into USER_TBL (userNum, userId, userPassword, userName, userNickname, userAddress) 
values ('1', 'master@naver.com','master','마스터','마스터','이젠하우스')
update USER_TBL set userid='master@naver.com' where  userNum = 1
select * from USER_TBL where userid='master@naver.com'

create table usermenu_tbl(
menuNum number(2) primary key,
sp varchar2(100) not null,
fullname varchar2(100) not null
)

drop table usermenu_tbl

insert into USERMENU_TBL values (1, '/member/insertui.do', 'kr.co.member.command.InsertUICommand')
insert into USERMENU_TBL values (2, '/member/idcheck.do', 'kr.co.member.command.IdCheckCommand')


update USERMENU_TBL set sp = '' where menunum = ?


select * from USERMENU_TBL

commit