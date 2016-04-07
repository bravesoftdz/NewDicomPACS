ALTER TABLE ASU.TNAZWIZZARD_MEDNAZ
  DROP CONSTRAINT TNAZWIZZARD_MEDNAZ_FREQUENCY
/


-- 
-- Foreign Key Constraints for Table TNAZWIZZARD_MEDNAZ 
-- 
ALTER TABLE ASU.TNAZWIZZARD_MEDNAZ ADD (
  CONSTRAINT TNAZWIZZARD_MEDNAZ_FREQUENCY 
 FOREIGN KEY (FK_FREQUENCY) 
 REFERENCES ASU.TFREQUENCY (FK_ID))
/
