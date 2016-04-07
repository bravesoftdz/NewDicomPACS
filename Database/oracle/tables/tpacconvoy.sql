DROP TABLE ASU.TPACCONVOY CASCADE CONSTRAINTS
/

--
-- TPACCONVOY  (Table) 
--
CREATE TABLE ASU.TPACCONVOY
(
  FK_ID        NUMBER(9),
  FK_PACID     NUMBER(9),
  FK_CONVOYID  NUMBER(9)
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

COMMENT ON TABLE ASU.TPACCONVOY IS '������ �������������� ��� by TimurLan'
/

COMMENT ON COLUMN ASU.TPACCONVOY.FK_ID IS 'SEQUENCE=[SEQ_TPACCONVOY]'
/

COMMENT ON COLUMN ASU.TPACCONVOY.FK_PACID IS '��� ��������������� ����'
/

COMMENT ON COLUMN ASU.TPACCONVOY.FK_CONVOYID IS '��� ��������������� ����'
/


--
-- TPACCONVOY_BY_ID_CONVOYID  (Index) 
--
--  Dependencies: 
--   TPACCONVOY (Table)
--
CREATE UNIQUE INDEX ASU.TPACCONVOY_BY_ID_CONVOYID ON ASU.TPACCONVOY
(FK_ID, FK_CONVOYID)
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
-- TPACCPNVOY_BY_ID_PACID  (Index) 
--
--  Dependencies: 
--   TPACCONVOY (Table)
--
CREATE UNIQUE INDEX ASU.TPACCPNVOY_BY_ID_PACID ON ASU.TPACCONVOY
(FK_ID, FK_PACID)
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
-- TPACCONVOY_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TPACCONVOY (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPACCONVOY_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TPACCONVOY REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TPACCONVOY.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

