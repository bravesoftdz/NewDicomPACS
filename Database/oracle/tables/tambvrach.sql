DROP TABLE ASU.TAMBVRACH CASCADE CONSTRAINTS
/

--
-- TAMBVRACH  (Table) 
--
CREATE TABLE ASU.TAMBVRACH
(
  FK_ID        NUMBER(15),
  FK_PACID     NUMBER(15),
  FK_VRACHID   NUMBER(15),
  FK_DALID     NUMBER(15),
  FK_OTMENAID  NUMBER(15),
  FL_VID       VARCHAR2(1 BYTE),
  FK_SPECID    NUMBER(9)                        DEFAULT -1
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          6584K
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

COMMENT ON TABLE ASU.TAMBVRACH IS '������� ����� ������������ ��������� by TimurLan '
/

COMMENT ON COLUMN ASU.TAMBVRACH.FK_ID IS 'SEQUENCE=[SEQ_TAMBVRACH]'
/

COMMENT ON COLUMN ASU.TAMBVRACH.FK_PACID IS 'TAMBULANCE.FK_ID �������'
/

COMMENT ON COLUMN ASU.TAMBVRACH.FK_VRACHID IS 'TSOTR.FK_ID ������� ����'
/

COMMENT ON COLUMN ASU.TAMBVRACH.FK_DALID IS 'TSOTR.FK_ID ����������� ���������'
/

COMMENT ON COLUMN ASU.TAMBVRACH.FK_OTMENAID IS '��� ������'
/

COMMENT ON COLUMN ASU.TAMBVRACH.FL_VID IS '������� �������� �����'
/

COMMENT ON COLUMN ASU.TAMBVRACH.FK_SPECID IS 'TSPEC.FK_ID'
/


--
-- TAMBVRACH_BY_ID  (Index) 
--
--  Dependencies: 
--   TAMBVRACH (Table)
--
CREATE UNIQUE INDEX ASU.TAMBVRACH_BY_ID ON ASU.TAMBVRACH
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3840K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TAMBVRACH_BY_ID_VID  (Index) 
--
--  Dependencies: 
--   TAMBVRACH (Table)
--
CREATE UNIQUE INDEX ASU.TAMBVRACH_BY_ID_VID ON ASU.TAMBVRACH
(FL_VID, FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4352K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TAMBVRACH_BY_PACID  (Index) 
--
--  Dependencies: 
--   TAMBVRACH (Table)
--
CREATE INDEX ASU.TAMBVRACH_BY_PACID ON ASU.TAMBVRACH
(FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TAMBVRACH_INSERT  (Trigger) 
--
--  Dependencies: 
--   TAMBVRACH (Table)
--
CREATE OR REPLACE TRIGGER ASU."TAMBVRACH_INSERT" 
  BEFORE INSERT
  ON ASU.TAMBVRACH   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TAMBVRACH.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

