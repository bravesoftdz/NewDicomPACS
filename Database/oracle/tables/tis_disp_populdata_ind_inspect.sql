ALTER TABLE ASU.TIS_DISP_POPULDATA_IND_INSPECT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_DISP_POPULDATA_IND_INSPECT CASCADE CONSTRAINTS
/

--
-- TIS_DISP_POPULDATA_IND_INSPECT  (Table) 
--
--  Dependencies: 
--   TIS_DISP_POPULDATA_INDICATOR (Table)
--
CREATE TABLE ASU.TIS_DISP_POPULDATA_IND_INSPECT
(
  FK_ID                        NUMBER           NOT NULL,
  FK_CODEID                    NUMBER,
  FN_PEOPLECOUNT               NUMBER,
  FK_IS_DISP_POPULDATA_IND_ID  NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
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


--
-- PK_TIS_DISP_POPULDATA_IND_INSP  (Index) 
--
--  Dependencies: 
--   TIS_DISP_POPULDATA_IND_INSPECT (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_DISP_POPULDATA_IND_INSP ON ASU.TIS_DISP_POPULDATA_IND_INSPECT
(FK_ID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TIS_DISP_POPULDATA_IND_INSP_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_DISP_POPULDATA_IND_INSPECT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_DISP_POPULDATA_IND_INSP_BI
  BEFORE INSERT
  ON ASU.TIS_DISP_POPULDATA_IND_INSPECT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_DISP_POPULDATA_IND_INS.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_DISP_POPULDATA_IND_INSPECT 
-- 
ALTER TABLE ASU.TIS_DISP_POPULDATA_IND_INSPECT ADD (
  CONSTRAINT PK_TIS_DISP_POPULDATA_IND_INSP
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE USR
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/

-- 
-- Foreign Key Constraints for Table TIS_DISP_POPULDATA_IND_INSPECT 
-- 
ALTER TABLE ASU.TIS_DISP_POPULDATA_IND_INSPECT ADD (
  CONSTRAINT FK_TIS_DISP_REFERENCE_TIS_DIS4 
 FOREIGN KEY (FK_IS_DISP_POPULDATA_IND_ID) 
 REFERENCES ASU.TIS_DISP_POPULDATA_INDICATOR (FK_ID))
/

