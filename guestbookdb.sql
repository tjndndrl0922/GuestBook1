--테이블 삭제
drop table guestbook;

--시퀀스 삭제
drop SEQUENCE seq_no;

--테이블 만들기
create table guestbook(
     no number(5),
     name varchar2(80) not null,
     password varchar2(20),
     content VARCHAR2(2000),
     reg_date date,
     primary key(no)
);

--시퀀스 생성
create sequence seq_no
increment by 1
start with 1;

--guestbook select
SELECT no,
        name,
        password,
        content,
         to_char(reg_date, 'yyyy-mm-dd hh24:mi:ss') reg_date
FROM guestbook;

--insert 문
insert into guestbook
values(seq_no.nextval, ?, ?, ?, sysdate);

insert into guestbook
values(seq_no.nextval, '서웅기', '서웅기', '컨텐츠', sysdate);

--delete 문
delete from guestbook
where no = 3
and password = 'ììê¸°';

commit;