DROP TRIGGER ASU.TSOMRES_BEFORE_INSERT
/

--
-- TSOMRES_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSTOMRES (Sequence)
--   TSTOMRES (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSOMRES_BEFORE_INSERT" 
  BEFORE INSERT ON ASU.TSTOMRES   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  SELECT SEQ_TSTOMRES.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

