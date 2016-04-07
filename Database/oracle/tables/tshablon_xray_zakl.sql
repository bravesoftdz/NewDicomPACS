DROP TABLE ASU.TSHABLON_XRAY_ZAKL CASCADE CONSTRAINTS
/

--
-- TSHABLON_XRAY_ZAKL  (Table) 
--
CREATE TABLE ASU.TSHABLON_XRAY_ZAKL
(
  FK_ID         NUMBER                          NOT NULL,
  FC_NAME       VARCHAR2(1000 BYTE),
  FK_OWNER      NUMBER(15),
  FK_KABINETID  NUMBER,
  FN_ORDER      NUMBER(15)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TSHABLON_XRAY_ZAKL IS '������� �������� ���������� ��� �������-���������'
/

COMMENT ON COLUMN ASU.TSHABLON_XRAY_ZAKL.FN_ORDER IS '�������'
/


--
-- TSHABLON_XRAY_ZAKL_ID  (Index) 
--
--  Dependencies: 
--   TSHABLON_XRAY_ZAKL (Table)
--
CREATE UNIQUE INDEX ASU.TSHABLON_XRAY_ZAKL_ID ON ASU.TSHABLON_XRAY_ZAKL
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
-- TSHABLON_XRAY_ZAKL_KABINETID  (Index) 
--
--  Dependencies: 
--   TSHABLON_XRAY_ZAKL (Table)
--
CREATE INDEX ASU.TSHABLON_XRAY_ZAKL_KABINETID ON ASU.TSHABLON_XRAY_ZAKL
(FK_KABINETID)
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
-- TSHABLON_XRAY_ZAKL_OWNER  (Index) 
--
--  Dependencies: 
--   TSHABLON_XRAY_ZAKL (Table)
--
CREATE INDEX ASU.TSHABLON_XRAY_ZAKL_OWNER ON ASU.TSHABLON_XRAY_ZAKL
(FK_OWNER)
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
-- TSHABLON_XRAY_ZAKL_BEF_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSHABLON_XRAY_ZAKL (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSHABLON_XRAY_ZAKL_BEF_INSERT" 
 BEFORE
  INSERT
 ON asu.tshablon_xray_zakl
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_TSHABLON_XRAY_ZAKL.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;

