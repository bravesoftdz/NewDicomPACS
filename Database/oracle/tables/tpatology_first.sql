DROP TABLE ASU.TPATOLOGY_FIRST CASCADE CONSTRAINTS
/

--
-- TPATOLOGY_FIRST  (Table) 
--
CREATE TABLE ASU.TPATOLOGY_FIRST
(
  FK_ID     NUMBER(9),
  FC_NAME   VARCHAR2(4000 BYTE),
  FL_FIRST  NUMBER(1),
  FK_PACID  NUMBER(9),
  FK_LECH   NUMBER(9)                           DEFAULT 0                     NOT NULL
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TPATOLOGY_FIRST IS '������� ���������� ���������'
/

COMMENT ON COLUMN ASU.TPATOLOGY_FIRST.FK_ID IS 'SEQUENCE=[SEQ_TPATOLOGY_FIRST]'
/

COMMENT ON COLUMN ASU.TPATOLOGY_FIRST.FC_NAME IS '���������'
/

COMMENT ON COLUMN ASU.TPATOLOGY_FIRST.FL_FIRST IS '������� ��������'
/

COMMENT ON COLUMN ASU.TPATOLOGY_FIRST.FK_PACID IS '�������'
/

COMMENT ON COLUMN ASU.TPATOLOGY_FIRST.FK_LECH IS '��� ��������� �������'
/


--
-- TPATOLOGY_FIRST_ID  (Index) 
--
--  Dependencies: 
--   TPATOLOGY_FIRST (Table)
--
CREATE UNIQUE INDEX ASU.TPATOLOGY_FIRST_ID ON ASU.TPATOLOGY_FIRST
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPATOLOGY_FIRST_PACID_LECH  (Index) 
--
--  Dependencies: 
--   TPATOLOGY_FIRST (Table)
--
CREATE INDEX ASU.TPATOLOGY_FIRST_PACID_LECH ON ASU.TPATOLOGY_FIRST
(FK_PACID, FK_LECH)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPATOLOGY_FIRST_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPATOLOGY_FIRST (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPATOLOGY_FIRST_INSERT" 
BEFORE INSERT
ON ASU.TPATOLOGY_FIRST REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  select SEQ_TPATOLOGY_FIRST.nextval into :NEW.FK_ID from dual;
End;
/
SHOW ERRORS;

