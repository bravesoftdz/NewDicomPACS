ALTER TABLE ASU.TNAZPARAM
  DROP CONSTRAINT TNAZPARAM#ID
/

-- 
-- Non Foreign Key Constraints for Table TNAZPARAM 
-- 
ALTER TABLE ASU.TNAZPARAM ADD (
  CONSTRAINT TNAZPARAM#ID
 PRIMARY KEY
 (FK_ID))
/
