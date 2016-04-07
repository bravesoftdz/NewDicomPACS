ALTER TABLE ASU.TIS_GENSTAT_STAT_MKB
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_GENSTAT_STAT_MKB CASCADE CONSTRAINTS
/

--
-- TIS_GENSTAT_STAT_MKB  (Table) 
--
--  Dependencies: 
--   TIS_GENSTAT_STAT (Table)
--
CREATE TABLE ASU.TIS_GENSTAT_STAT_MKB
(
  FK_ID                  NUMBER                 NOT NULL,
  FC_MKBCODE             VARCHAR2(64 BYTE),
  FN_PEOPLECOUNT         NUMBER,
  FK_IS_GENSTAT_STAT_ID  NUMBER
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
-- PK_TIS_GENSTAT_STAT_MKB  (Index) 
--
--  Dependencies: 
--   TIS_GENSTAT_STAT_MKB (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_GENSTAT_STAT_MKB ON ASU.TIS_GENSTAT_STAT_MKB
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
-- TIS_GENSTAT_STAT_MKB_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_GENSTAT_STAT_MKB (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_GENSTAT_STAT_MKB_BI
  BEFORE INSERT
  ON ASU.TIS_GENSTAT_STAT_MKB   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_GENSTAT_STAT_MKB.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_GENSTAT_STAT_MKB 
-- 
ALTER TABLE ASU.TIS_GENSTAT_STAT_MKB ADD (
  CONSTRAINT PK_TIS_GENSTAT_STAT_MKB
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
-- Foreign Key Constraints for Table TIS_GENSTAT_STAT_MKB 
-- 
ALTER TABLE ASU.TIS_GENSTAT_STAT_MKB ADD (
  CONSTRAINT FK_TIS_GENS_REFERENCE_TIS_GEN4 
 FOREIGN KEY (FK_IS_GENSTAT_STAT_ID) 
 REFERENCES ASU.TIS_GENSTAT_STAT (FK_ID))
/
