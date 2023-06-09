-- 오라클 한줄 주석문(comment)
/*
    오라클 한 줄 이상 주석문 기호
*/
--guestbook 방명록 테이블 만들기
create table guestbook(
    gno number(38) primary key,  -- 오라클 시퀀스로부터 번호를 가져와서 저장하는 방명록 번호(중복, null이 없음)
    gname varchar2(20) not null, -- 글쓴이
    gtitle varchar2(20) not null, -- 글제목
    gpwd varchar2(20) not null, -- 비밀번호
    gcont varchar2(4000) not null, -- 글 내용
    ghit number(38) default 0, -- default 0제약조건은 해당 컬럼인 ghit에 굳이 정수 숫자 번호값을 저장하지 않아도 기본값 0이 저장
    gdate date  --방명록 등록날짜
);

-- gno_seq 시퀀스 생성
create SEQUENCE gno_seq 
start with 1    -- 1부터 시작
increment by 1  -- 1씩 증가
nocache;        -- 임시 메모리를 사용하지 않겠다는 의미

-- 생성된 시퀀스 번호값 확인
select gno_seq.nextval as "gno_seq시퀀스 번호값" from dual;

select * from guestbook;

create table boardT7(
  bno number(38) primary key,
  bname varchar2(30) not null,
  btitle varchar2(200) not null,
  bcont varchar2(4000) not null,
  bhit int  default 0,
  bdate date default sysdate
);

create sequence bno_seq
start with 1
INCREMENT by 1
nocache;

select * from boardt7 ORDER by bno desc;

select count(*) from boardt7;



















