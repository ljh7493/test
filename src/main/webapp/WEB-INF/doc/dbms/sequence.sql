-- SEQUENCE ����
DROP SEQUENCE memo_seq;
 
-- SEQUENCE ��ü ����
CREATE SEQUENCE memo_seq
START WITH   1            --���۹�ȣ
INCREMENT BY 1          --������
MAXVALUE     9999999  --�ִ밪
CACHE        2               --������ ����� ���� update�Ǵ� ���� �����ϱ����� ĳ�ð�
NOCYCLE;    
 
CREATE TABLE memo(
  memono NUMBER(5) NOT NULL,
  title VARCHAR(30) NOT NULL,
  PRIMARY KEY(memono)
);
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, '���� ��ɴϴ�.');
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, '���� ����');
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, 'ü�� ����');
 
SELECT memono, title 
FROM memo 
ORDER BY memono ASC;
 MEMONO TITLE
 ------ --------
      1 ���� ��ɴϴ�.
      2 ���� ����
      3 ü�� ����
 
DELETE FROM memo WHERE memono=3;
 
INSERT INTO memo(memono, title)
VALUES(memo_seq.nextval, 'ȭ����');
 
SELECT memono, title 
FROM memo 
ORDER BY memono ASC;
 MEMONO TITLE
 ------ --------
      1 ���� ��ɴϴ�.
      2 ���� ����
      4 ȭ����