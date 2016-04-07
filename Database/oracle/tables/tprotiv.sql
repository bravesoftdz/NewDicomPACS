DROP TABLE ASU.TPROTIV CASCADE CONSTRAINTS
/

--
-- TPROTIV  (Table) 
--
CREATE TABLE ASU.TPROTIV
(
  FK_ID      NUMBER(9),
  FK_SMID1   NUMBER(9),
  FK_SMID2   NUMBER(9),
  FN_PERIOD  NUMBER(9)
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

COMMENT ON TABLE ASU.TPROTIV IS '??????? ???????????????? ?????????? ????????'
/

COMMENT ON COLUMN ASU.TPROTIV.FK_ID IS 'SEQUENCE=[SEQ_TPROTIV]'
/

COMMENT ON COLUMN ASU.TPROTIV.FK_SMID1 IS '??? SMID'
/

COMMENT ON COLUMN ASU.TPROTIV.FK_SMID2 IS '??? SMID'
/

COMMENT ON COLUMN ASU.TPROTIV.FN_PERIOD IS '����� ���������� � �������'
/


--
-- TPROTIV#SMID1  (Index) 
--
--  Dependencies: 
--   TPROTIV (Table)
--
CREATE INDEX ASU.TPROTIV#SMID1 ON ASU.TPROTIV
(FK_SMID1)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          12672K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROTIV_SMID1_SMID2  (Index) 
--
--  Dependencies: 
--   TPROTIV (Table)
--
CREATE INDEX ASU.TPROTIV_SMID1_SMID2 ON ASU.TPROTIV
(FK_SMID1, FK_SMID2)
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
-- TPROTIV#SMID2  (Index) 
--
--  Dependencies: 
--   TPROTIV (Table)
--
CREATE INDEX ASU.TPROTIV#SMID2 ON ASU.TPROTIV
(FK_SMID2)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          12672K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TPROTIV_BEFOR_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPROTIV (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPROTIV_BEFOR_INSERT" 
BEFORE INSERT
ON ASU.TPROTIV REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  Select SEQ_TPROTIV.NextVal into :new.FK_ID from dual;
End;
/
SHOW ERRORS;

