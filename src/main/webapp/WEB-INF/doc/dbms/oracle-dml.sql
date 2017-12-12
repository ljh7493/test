DROP TABLE sec PURGE;
purge �������� �ʰ� ��������
 
CREATE TABLE sec(
    name VARCHAR(10) NOT NULL,
    kuk  NUMBER(5,2) NOT NULL -- ����3�ڸ�, �Ǽ�2�ڸ�, �Ҽ��� �ڵ� �ݿø�
);
 
DELETE FROM sec;
     
��
INSERT INTO sec(name, kuk) VALUES('��ȹ��', 100.01);
SELECT * FROM sec;
     
�� ERROR, ���� 4�ڸ�, ������ �ڸ����� �����ϸ� ������ �߻��մϴ�.
INSERT INTO sec(name, kuk) VALUES('������', 1000.01);
 
�� 100 ���, �ݿø��� �ȵǸ� �Ҽ� �κ��� �����˴ϴ�.
INSERT INTO sec(name, kuk) VALUES('������', 100.001);
SELECT * FROM sec;
     
�� �ݿø�, 0.5�̻��� �ݿø��˴ϴ�.
INSERT INTO sec(name, kuk) VALUES('�׽���', 100.005);
SELECT * FROM sec;
 
�� �ִ� ���� �Է�
INSERT INTO sec(name, kuk) VALUES('�����', 999.99);
SELECT * FROM sec;
 
INSERT INTO sec(name, kuk) VALUES('�����', -999.99);
SELECT * FROM sec;
 
 
4. Date: ��¥��
   - ����Ŭ�� ������ �ݵ�� SELECT ~ FROM ~�� ������ �Ǿ� �־�� �մϴ�. 
     �������� ������ ������ �ƴϸ� dual �ý��� �ӽ� ���̺��� �̿��� ����մϴ�.
     dual�� sys������ �����ڷ� �ý��� �������� ����� �� ����մϴ�.  
     SELECT���� �ݵ�� FROM���� �����ؾ��ϴ� ����Ŭ ���� ��Ģ ������ ���˴ϴ�.
 
     SELECT * FROM dual;
     DROP TABLE sec PURGE;
 
CREATE TABLE sec(
    name VARCHAR(10) NOT NULL,
    kuk  NUMBER(5,2) NOT NULL --����3�ڸ�, �Ǽ�2�ڸ�, �Ҽ��� �ڵ� �ݿø�
);
 
DELETE FROM sec;
     
��
INSERT INTO sec(name, kuk) VALUES('��ȹ��', 100.01);
SELECT * FROM sec;
     
�� ERROR, ���� 4�ڸ�, ������ �ڸ����� �����ϸ� ������ �߻��մϴ�.
INSERT INTO sec(name, kuk) VALUES('������', 1000.01);
 
�� 100 ���, �ݿø��� �ȵǸ� �Ҽ� �κ��� �����˴ϴ�.
INSERT INTO sec(name, kuk) VALUES('������', 100.001);
SELECT * FROM sec;
     
�� �ݿø�, 0.5�̻��� �ݿø��˴ϴ�.
INSERT INTO sec(name, kuk) VALUES('�׽���', 100.005);
SELECT * FROM sec;
 
�� �ִ� ���� �Է�
INSERT INTO sec(name, kuk) VALUES('�����', 999.99);
SELECT * FROM sec;
 
INSERT INTO sec(name, kuk) VALUES('�����', -999.99);
SELECT * FROM sec;
 
 
4. Date: ��¥��
   - ����Ŭ�� ������ �ݵ�� SELECT ~ FROM ~�� ������ �Ǿ� �־�� �մϴ�. 
     �������� ������ ������ �ƴϸ� dual �ý��� �ӽ� ���̺��� �̿��� ����մϴ�.
     dual�� sys������ �����ڷ� �ý��� �������� ����� �� ����մϴ�.  
     SELECT���� �ݵ�� FROM���� �����ؾ��ϴ� ����Ŭ ���� ��Ģ ������ ���˴ϴ�.
 
     SELECT * FROM dual;
     DUMMY
     -----
     X
 
     SELECT sysdate FROM dual;
     SYSDATE
     ---------------------
     2016-05-23 13:03:51.0
 
--�÷� ���� ����, ������ �÷����� ���˴ϴ�.
SELECT sysdate as "DAY" FROM dual;
 DAY
 ---------------------
 2016-05-23 13:04:20.0
 
 -- ����ϸ� ����ϴ� ���
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') as datetime 
FROM dual;
 DATETIME
 ----------
 2016-05-23
 
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') as datetime 
FROM dual;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') as datetime 
FROM dual;
 DATETIME
 -------------------
 2016-05-23 01:05:11
 
 
CREATE TABLE dateTest(
    datetestno    NUMBER(3)    NOT NULL,
    messagedate DATE         NOT NULL,
    message       VARCHAR(100) NOT NULL
);
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(1, sysdate, '���� �����ϼ���.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ---------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate-1, '���� �ʹ� �߿���.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
 
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate+1, '���� ù�� �µ���.');

INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate+1, '�� �ȿ�.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
          2 2016-05-24 13:07:46.0 ���� ù�� �µ���.
 
-- ���ڿ��� ��¥�� �Է�, �ð��� 0���� �ڵ� �Է�
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, '2018-01-01', '���� �� ���� ��������');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
          2 2016-05-24 13:07:46.0 ���� ù�� �µ���.
          2 2009-01-01 00:00:00.0 ���� �� ���� ��������
 
-- �ð����� 00�� ������ �� �����ϴ�.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 00:00:01', 'YYYY-MM-DD HH:MI:SS')
, '���� �� ���� ��������');
 
-- ���� 00���� ���� �� �� �ֽ��ϴ�.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 12:00:01', 'YYYY-MM-DD HH:MI:SS')
, '���� �� ���� ��������');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
          2 2016-05-24 13:07:46.0 ���� ù�� �µ���.
          2 2009-01-01 00:00:00.0 ���� �� ���� ��������
          2 2009-02-01 12:00:01.0 ���� �� ���� ��������
          
     DUMMY
     -----
     X
 
     SELECT sysdate FROM dual;
     SYSDATE
     ---------------------
     2016-05-23 13:03:51.0
 
--�÷� ���� ����, ������ �÷����� ���˴ϴ�.
SELECT sysdate as "DAY" FROM dual;
 DAY
 ---------------------
 2016-05-23 13:04:20.0
 
 -- ����ϸ� ����ϴ� ���
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') as datetime 
FROM dual;
 DATETIME
 ----------
 2016-05-23
 
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') as datetime 
FROM dual;
 DATETIME
 -------------------
 2016-05-23 01:05:11
 
 
CREATE TABLE dateTest(
    datetestno    NUMBER(3)    NOT NULL,
    messagedate DATE         NOT NULL,
    message       VARCHAR(100) NOT NULL
);
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(1, sysdate, '���� �����ϼ���.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ---------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate-1, '���� �ʹ� �߿���.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
 
 
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, sysdate+1, '���� ù�� �µ���.');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ----------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
          2 2016-05-24 13:07:46.0 ���� ù�� �µ���.
 
-- ���ڿ��� ��¥�� �Է�, �ð��� 0���� �ڵ� �Է�
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2, '2009-01-01', '���� �� ���� ��������');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
          2 2016-05-24 13:07:46.0 ���� ù�� �µ���.
          2 2009-01-01 00:00:00.0 ���� �� ���� ��������
 
-- �ð����� 00�� ������ �� �����ϴ�.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 00:00:01', 'YYYY-MM-DD HH:MI:SS')
, '���� �� ���� ��������');
 
-- ���� 00���� ���� �� �� �ֽ��ϴ�.
INSERT INTO dateTest(datetestno, messagedate, message)
VALUES(2
, TO_DATE('2009-02-01 12:00:01', 'YYYY-MM-DD HH:MI:SS')
, '���� �� ���� ��������');
 
SELECT datetestno, messagedate, message FROM dateTest;
 DATETESTNO MESSAGEDATE           MESSAGE
 ---------- --------------------- ------------
          1 2016-05-23 13:06:31.0 ���� �����ϼ���.
          2 2016-05-22 13:06:57.0 ���� �ʹ� �߿���.
          2 2016-05-24 13:07:46.0 ���� ù�� �µ���.
          2 2009-01-01 00:00:00.0 ���� �� ���� ��������
          2 2009-02-01 12:00:01.0 ���� �� ���� ��������
          