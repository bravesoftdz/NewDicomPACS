DROP TRIGGER ASU.TEXP_TSOTR_BI
/

--
-- TEXP_TSOTR_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TEXP_TSOTR (Sequence)
--   TEXP_TSOTR (Table)
--
CREATE OR REPLACE TRIGGER ASU.TEXP_TSOTR_BI
 BEFORE INSERT
 ON ASU.TEXP_TSOTR REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
 IF :NEW.FK_ID IS NULL THEN
    SELECT ASU.SEQ_TEXP_TSOTR.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
 END IF;
END TEXP_TSOTR_BI;
/
SHOW ERRORS;

