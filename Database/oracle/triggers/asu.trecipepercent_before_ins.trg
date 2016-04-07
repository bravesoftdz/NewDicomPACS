DROP TRIGGER ASU.TRECIPEPERCENT_BEFORE_INS
/

--
-- TRECIPEPERCENT_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TRECIPEPERCENT (Sequence)
--   TRECIPEPERCENT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRECIPEPERCENT_BEFORE_INS" 
  BEFORE INSERT ON ASU.TRECIPEPERCENT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
DECLARE

BEGIN
  SELECT ASU.SEQ_TRECIPEPERCENT.nextval into :new.FK_ID from dual;
END TRECIPEPERCENT_BEFORE_INS;
/
SHOW ERRORS;

