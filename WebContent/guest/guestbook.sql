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























