-- memberT 테이블 생성

create table memberT(
    mem_id varchar2(30) primary key,
    mem_pwd varchar2(30) not null,
    mem_name varchar2(30) not null,
    mem_phone varchar2(30) not null,
    mem_email varchar2(50) not null
);

select * from memberT order by mem_id asc;

