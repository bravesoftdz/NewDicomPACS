ALTER TABLE ASU.TRECIPEPERCENT
  DROP CONSTRAINT TRECIPEPERCENT
/

-- 
-- Non Foreign Key Constraints for Table TRECIPEPERCENT 
-- 
ALTER TABLE ASU.TRECIPEPERCENT ADD (
  CONSTRAINT TRECIPEPERCENT
 PRIMARY KEY
 (FK_ID))
/
