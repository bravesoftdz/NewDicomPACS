ALTER TABLE ASU.TSTANDART_RAZDEL
  DROP CONSTRAINT TSTANDART_RAZDEL_PK
/

-- 
-- Non Foreign Key Constraints for Table TSTANDART_RAZDEL 
-- 
ALTER TABLE ASU.TSTANDART_RAZDEL ADD (
  CONSTRAINT TSTANDART_RAZDEL_PK
 PRIMARY KEY
 (FK_ID))
/
