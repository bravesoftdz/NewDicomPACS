DROP TRIGGER ASU."ASU.TDOPDISP_ORG"
/

--
-- "ASU.TDOPDISP_ORG"  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TDOPDISP_ORG (Table)
--   SEQ_DOPDISP_ORG (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."ASU.TDOPDISP_ORG" 
 BEFORE
  INSERT
 ON ASU.TDOPDISP_ORG REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
Begin
  SELECT SEQ_DOPDISP_ORG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

