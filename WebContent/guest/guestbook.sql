-- ����Ŭ ���� �ּ���(comment)
/*
    ����Ŭ �� �� �̻� �ּ��� ��ȣ
*/
--guestbook ���� ���̺� �����
create table guestbook(
    gno number(38) primary key,  -- ����Ŭ �������κ��� ��ȣ�� �����ͼ� �����ϴ� ���� ��ȣ(�ߺ�, null�� ����)
    gname varchar2(20) not null, -- �۾���
    gtitle varchar2(20) not null, -- ������
    gpwd varchar2(20) not null, -- ��й�ȣ
    gcont varchar2(4000) not null, -- �� ����
    ghit number(38) default 0, -- default 0���������� �ش� �÷��� ghit�� ���� ���� ���� ��ȣ���� �������� �ʾƵ� �⺻�� 0�� ����
    gdate date  --���� ��ϳ�¥
);

-- gno_seq ������ ����
create SEQUENCE gno_seq 
start with 1    -- 1���� ����
increment by 1  -- 1�� ����
nocache;        -- �ӽ� �޸𸮸� ������� �ʰڴٴ� �ǹ�

-- ������ ������ ��ȣ�� Ȯ��
select gno_seq.nextval as "gno_seq������ ��ȣ��" from dual;

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



















