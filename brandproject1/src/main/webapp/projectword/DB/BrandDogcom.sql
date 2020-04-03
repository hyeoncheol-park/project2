-- BrandDog.com Table

-- **** ������ ****
-- **** ���׷��� ���� ������ ****
-- ������ ����
DROP SEQUENCE travelSearchTrend_seq;
DROP SEQUENCE foodSearchTrend_seq;
DROP SEQUENCE cultureSearchTrend_seq;
DROP SEQUENCE newsSearchTrend_seq;

DROP SEQUENCE travelReWord_seq;
DROP SEQUENCE cultureReWord_seq;
DROP SEQUENCE foodReWord_seq;
DROP SEQUENCE newsReWord_seq;
-- ������ ����
CREATE SEQUENCE travelSearchTrend_seq;
CREATE SEQUENCE foodSearchTrend_seq;
CREATE SEQUENCE cultureSearchTrend_seq;
CREATE SEQUENCE newsSearchTrend_seq;

CREATE SEQUENCE travelReWord_seq;
CREATE SEQUENCE cultureReWord_seq;
CREATE SEQUENCE foodReWord_seq;
CREATE SEQUENCE newsReWord_seq;

-- **** ���̺� ****
-- ���̺� ����
Drop table travelSearchTrend;
Drop table foodSearchTrend;
Drop table cultureSearchTrend;
Drop table newsSearchTrend;

Drop table travelReWord;
Drop table foodReWord;
Drop table cultureReWord;
Drop table newsReWord;
-- **** ���׷��� ���� ���̺� ****
-- ���׷��� -> �˻��� ����
-- startDate             string   ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����).
-- endDate               string   ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����)
-- timeUnit              string   ���� ����
-- results.title         string   ������
-- results.data.period   string   ������ ���� ��¥(yyyy-mm-dd ����)
-- results.data.ratio    string   ������ �˻����� ����� ����. ������ ������� ���� ū ���� 100���� ������ ����Դϴ�.

-- Travel - SearchTrend �м�
CREATE TABLE travelSearchTrend(
  no NUMBER CONSTRAINT travelSearchTrend_no_pk PRIMARY KEY,
  startDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����) -> API������ String���� �Ǿ� ����. ó�� �� varchar�� �ؾ� �Ѵٸ� �ٽ� ���̺��� �ٽ� ����
  endDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����)
  timeUnit VARCHAR2(100) NOT NULL, -- ���� ����
  title VARCHAR2(300) NOT NULL, -- ������
  keywords VARCHAR2(300) NOT NULL,
  data varchar2(4000 byte) NOT NULL
  --period DATE NOT NULL, -- ������ ���� ��¥(yyyy-mm-dd ����)
  --ratio VARCHAR2(20) NOT NULL -- ������ �˻����� ����� ����. ������ ������� ���� ū ���� 100���� ������ ����Դϴ�. 
);

-- Culture - SearchTrend �м�
CREATE TABLE cultureSearchTrend(
  no NUMBER CONSTRAINT cultureSearchTrend_no_pk PRIMARY KEY,
  startDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����) -> API������ String���� �Ǿ� ����. ó�� �� varchar�� �ؾ� �Ѵٸ� �ٽ� ���̺��� �ٽ� ����
  endDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����)
  timeUnit VARCHAR2(100) NOT NULL, -- ���� ����
  title VARCHAR2(300) NOT NULL, -- ������
  keywords VARCHAR2(300) NOT NULL,
  data varchar2(4000 byte) NOT NULL
  --period DATE NOT NULL, -- ������ ���� ��¥(yyyy-mm-dd ����)
  --ratio VARCHAR2(20) NOT NULL -- ������ �˻����� ����� ����. ������ ������� ���� ū ���� 100���� ������ ����Դϴ�. 
);

-- Food - SearchTrend �м�
CREATE TABLE foodSearchTrend(
  no NUMBER CONSTRAINT foodSearchTrend_no_pk PRIMARY KEY,
  startDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����) -> API������ String���� �Ǿ� ����. ó�� �� varchar�� �ؾ� �Ѵٸ� �ٽ� ���̺��� �ٽ� ����
  endDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����)
  timeUnit VARCHAR2(100) NOT NULL, -- ���� ����
  title VARCHAR2(300) NOT NULL, -- ������
  keywords VARCHAR2(300) NOT NULL,
  data varchar2(4000 byte) NOT NULL
  --period DATE NOT NULL, -- ������ ���� ��¥(yyyy-mm-dd ����)
  --ratio VARCHAR2(20) NOT NULL -- ������ �˻����� ����� ����. ������ ������� ���� ū ���� 100���� ������ ����Դϴ�. 
);

-- News - SearchTrend �м�
CREATE TABLE newsSearchTrend(
  no NUMBER CONSTRAINT newsSearchTrend_no_pk PRIMARY KEY,
  startDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����) -> API������ String���� �Ǿ� ����. ó�� �� varchar�� �ؾ� �Ѵٸ� �ٽ� ���̺��� �ٽ� ����
  endDate VARCHAR2(100) NOT NULL, -- ��ȸ �Ⱓ ���� ��¥(yyyy-mm-dd ����)
  timeUnit VARCHAR2(100) NOT NULL, -- ���� ����
  title VARCHAR2(300) NOT NULL, -- ������
  keywords VARCHAR2(300) NOT NULL,
  data varchar2(4000 byte) NOT NULL
  --period DATE NOT NULL, -- ������ ���� ��¥(yyyy-mm-dd ����)
  --ratio VARCHAR2(20) NOT NULL -- ������ �˻����� ����� ����. ������ ������� ���� ū ���� 100���� ������ ����Դϴ�. 
);

CREATE TABLE travelReWord(
 no NUMBER CONSTRAINT travelReWord_no_pk PRIMARY KEY,
 title VARCHAR2(300) NOT NULL,
 word1 VARCHAR2(300) NOT NULL,
 word2 VARCHAR2(300) NOT NULL,
 word3 VARCHAR2(300) NOT NULL,
 word4 VARCHAR2(300) NOT NULL,
 word5 VARCHAR2(300) NOT NULL,
 word6 VARCHAR2(300) NOT NULL,
 word7 VARCHAR2(300) NOT NULL,
 word8 VARCHAR2(300) NOT NULL,
 word9 VARCHAR2(300) NOT NULL,
 word10 VARCHAR2(300) NOT NULL,
 word11 VARCHAR2(300) NOT NULL,
 word12 VARCHAR2(300) NOT NULL,
 word13 VARCHAR2(300) NOT NULL,
 word14 VARCHAR2(300) NOT NULL,
 word15 VARCHAR2(300) NOT NULL,
 word16 VARCHAR2(300) NOT NULL,
 word17 VARCHAR2(300) NOT NULL,
 word18 VARCHAR2(300) NOT NULL,
 word19 VARCHAR2(300) NOT NULL,
 word20 VARCHAR2(300) NOT NULL,
 word21 VARCHAR2(300) NOT NULL,
 word22 VARCHAR2(300) NOT NULL,
 word23 VARCHAR2(300) NOT NULL,
 word24 VARCHAR2(300) NOT NULL,
 word25 VARCHAR2(300) NOT NULL,
 word26 VARCHAR2(300) NOT NULL,
 word27 VARCHAR2(300) NOT NULL,
 word28 VARCHAR2(300) NOT NULL,
 word29 VARCHAR2(300) NOT NULL,
 word30 VARCHAR2(300) NOT NULL
);

CREATE TABLE foodReWord(
 no NUMBER CONSTRAINT foodReWord_no_pk PRIMARY KEY,
 title VARCHAR2(300) NOT NULL,
 word1 VARCHAR2(300) NOT NULL,
 word2 VARCHAR2(300) NOT NULL,
 word3 VARCHAR2(300) NOT NULL,
 word4 VARCHAR2(300) NOT NULL,
 word5 VARCHAR2(300) NOT NULL,
 word6 VARCHAR2(300) NOT NULL,
 word7 VARCHAR2(300) NOT NULL,
 word8 VARCHAR2(300) NOT NULL,
 word9 VARCHAR2(300) NOT NULL,
 word10 VARCHAR2(300) NOT NULL
);

CREATE TABLE cultureReWord(
 no NUMBER CONSTRAINT cultureReWord_no_pk PRIMARY KEY,
 title VARCHAR2(300) NOT NULL,
 word1 VARCHAR2(300) NOT NULL,
 word2 VARCHAR2(300) NOT NULL,
 word3 VARCHAR2(300) NOT NULL,
 word4 VARCHAR2(300) NOT NULL,
 word5 VARCHAR2(300) NOT NULL,
 word6 VARCHAR2(300) NOT NULL,
 word7 VARCHAR2(300) NOT NULL,
 word8 VARCHAR2(300) NOT NULL,
 word9 VARCHAR2(300) NOT NULL,
 word10 VARCHAR2(300) NOT NULL,
 word11 VARCHAR2(300) NOT NULL,
 word12 VARCHAR2(300) NOT NULL,
 word13 VARCHAR2(300) NOT NULL,
 word14 VARCHAR2(300) NOT NULL,
 word15 VARCHAR2(300) NOT NULL,
 word16 VARCHAR2(300) NOT NULL,
 word17 VARCHAR2(300) NOT NULL,
 word18 VARCHAR2(300) NOT NULL,
 word19 VARCHAR2(300) NOT NULL,
 word20 VARCHAR2(300) NOT NULL,
 word21 VARCHAR2(300) NOT NULL,
 word22 VARCHAR2(300) NOT NULL,
 word23 VARCHAR2(300) NOT NULL,
 word24 VARCHAR2(300) NOT NULL,
 word25 VARCHAR2(300) NOT NULL,
 word26 VARCHAR2(300) NOT NULL,
 word27 VARCHAR2(300) NOT NULL,
 word28 VARCHAR2(300) NOT NULL,
 word29 VARCHAR2(300) NOT NULL,
 word30 VARCHAR2(300) NOT NULL
);

CREATE TABLE newsReWord(
 no NUMBER CONSTRAINT newsReWord_no_pk PRIMARY KEY,
 title VARCHAR2(300) NOT NULL,
 word1 VARCHAR2(300) NOT NULL,
 word2 VARCHAR2(300) NOT NULL,
 word3 VARCHAR2(300) NOT NULL,
 word4 VARCHAR2(300) NOT NULL,
 word5 VARCHAR2(300) NOT NULL,
 word6 VARCHAR2(300) NOT NULL,
 word7 VARCHAR2(300) NOT NULL,
 word8 VARCHAR2(300) NOT NULL,
 word9 VARCHAR2(300) NOT NULL,
 word10 VARCHAR2(300) NOT NULL
);