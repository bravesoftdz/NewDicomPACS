ALTER TABLE ASU.TLOG_EXP_IMP
  DROP CONSTRAINT TLOG_EXP_IMP_ID
/

-- 
-- Non Foreign Key Constraints for Table TLOG_EXP_IMP 
-- 
ALTER TABLE ASU.TLOG_EXP_IMP ADD (
  CONSTRAINT TLOG_EXP_IMP_ID
 PRIMARY KEY
 (FK_ID))
/
