1. ���̺� ����
- PURGE: ���� �����Ͽ� ���� �� �� ����.
 
DROP TABLE itpay PURGE;
 
CREATE TABLE itpay(
    payno   NUMBER(7)   NOT NULL,  -- 1 ~ 9999999
    part    VARCHAR(20) NOT NULL,  -- �μ���
    sawon   VARCHAR(10) NOT NULL,  -- �����
    age     NUMBER(3)   NOT NULL,  -- ����, 1 ~ 999
    address VARCHAR(50) NULL,  -- �ּ�
    month   CHAR(6)     NOT NULL,  -- �޿���, 200805
    gdate   DATE        NOT NULL,  -- ������
    PRIMARY KEY(payno)
);
 
 
2. ���� ������ �߰�
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(1, '������', '���浿', 27, '������', '200801', sysdate);
       
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(2, '������', '���浿', 30, '��õ��', '200801', sysdate-5);
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(3, '��ü������', '�ٱ浿', 34, '������', '200801', sysdate-3);
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(4, '��ü������', '��浿', 36, '��õ��', '200802', sysdate-1);
 
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate)
VALUES(5, 'DB������', '���浿', 38, '��õ��', '200802', sysdate-0);
 
SELECT * FROM itpay;
 PAYNO PART  SAWON AGE ADDRESS MONTH  GDATE
 ----- ----- ----- --- ------- ------ ---------------------
     1 ������   ���浿    27 ������     200801 2016-05-23 13:18:39.0
     2 ������   ���浿    30 ��õ��     200801 2016-05-18 13:18:40.0
     3 ��ü������ �ٱ浿    34 ������     200801 2016-05-20 13:18:41.0
     4 ��ü������ ��浿    36 ��õ��     200802 2016-05-22 13:18:42.0
     5 DB������ ���浿    38 ��õ��     200802 2016-05-23 13:18:42.0
 
-- 6�� ������ ���ڵ� ����
DELETE FROM itpay 
WHERE payno >= 6;
 
-- null ��� �÷� ����, address �÷� ����
INSERT INTO itpay(payno, part, sawon, age, month, gdate)
VALUES(6, '������', '�ű浿', 33, '200804', sysdate);
 
SELECT * FROM itpay;
 
 PAYNO PART  SAWON AGE ADDRESS MONTH  GDATE
 ----- ----- ----- --- ------- ------ ---------------------
     1 ������   ���浿    27 ������     200801 2016-05-23 14:48:38.0
     2 ������   ���浿    30 ��õ��     200801 2016-05-18 14:48:39.0
     3 ��ü������ �ٱ浿    34 ������     200801 2016-05-20 14:48:40.0
     4 ��ü������ ��浿    36 ��õ��     200802 2016-05-22 14:48:41.0
     5 DB������ ���浿    38 ��õ��     200802 2016-05-23 14:48:42.0
     6 ������   �ű浿    33 NULL    200804 2016-05-23 14:50:21.0
 
 
2. �÷� �߰�
ALTER TABLE itpay
ADD (test VARCHAR2(9));
 
 
3. �÷� �Ӽ� ����
ALTER TABLE itpay
MODIFY (test VARCHAR2(30));
 
 
4. �÷��� ����
ALTER TABLE itpay
RENAME COLUMN test to test2;
 
 
5. �÷� ����
ALTER TABLE itpay
DROP COLUMN test2;
 
 
6. ���̺� ����
DROP TABLE itpay;
 
-- DROP TABLE itpay PURGE; -- ���̺� ���� ����
 
 
* ���̺� ����: ������ ���� ���� �ȵ�.
FLASHBACK TABLE itpay TO BEFORE DROP;
 
SELECT * FROM itpay;
 
 
7. ������ ����
PURGE RECYCLEBIN;