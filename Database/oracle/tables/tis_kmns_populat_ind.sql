ALTER TABLE ASU.TIS_KMNS_POPULAT_IND
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TIS_KMNS_POPULAT_IND CASCADE CONSTRAINTS
/

--
-- TIS_KMNS_POPULAT_IND  (Table) 
--
--  Dependencies: 
--   TIS_KMNS_POPULAT (Table)
--
CREATE TABLE ASU.TIS_KMNS_POPULAT_IND
(
  FK_ID                    NUMBER               NOT NULL,
  FC_INSPECTIONPLACEID     VARCHAR2(64 BYTE),
  FN_ALLKMNS               NUMBER,
  FN_FIRSTSTAGECOMPLETED   NUMBER,
  FN_SENDTOSECONDSTAGE     NUMBER,
  FN_SECONDSTAGECOMPLETED  NUMBER,
  FN_PRIMARYHEALTHCARE     NUMBER,
  FN_STATIONARYHEALTHCARE  NUMBER,
  FN_VISITCOUNT            NUMBER,
  FN_VISITKMNSCOUNT        NUMBER,
  FK_IS_KMNS_POPULAT_ID    NUMBER
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
-- PK_TIS_KMNS_POPULAT_IND  (Index) 
--
--  Dependencies: 
--   TIS_KMNS_POPULAT_IND (Table)
--
CREATE UNIQUE INDEX ASU.PK_TIS_KMNS_POPULAT_IND ON ASU.TIS_KMNS_POPULAT_IND
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
-- TIS_KMNS_POPULAT_IND_BI  (Trigger) 
--
--  Dependencies: 
--   TIS_KMNS_POPULAT_IND (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_KMNS_POPULAT_IND_BI
  BEFORE INSERT
  ON ASU.TIS_KMNS_POPULAT_IND   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_KMNS_POPULAT_IND.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TIS_KMNS_POPULAT_IND 
-- 
ALTER TABLE ASU.TIS_KMNS_POPULAT_IND ADD (
  CONSTRAINT PK_TIS_KMNS_POPULAT_IND
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
-- Foreign Key Constraints for Table TIS_KMNS_POPULAT_IND 
-- 
ALTER TABLE ASU.TIS_KMNS_POPULAT_IND ADD (
  CONSTRAINT FK_TIS_KMNS_REFERENCE_TIS_KMN2 
 FOREIGN KEY (FK_IS_KMNS_POPULAT_ID) 
 REFERENCES ASU.TIS_KMNS_POPULAT (FK_ID))
/
