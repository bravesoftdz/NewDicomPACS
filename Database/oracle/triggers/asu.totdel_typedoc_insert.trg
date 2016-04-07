DROP TRIGGER ASU.TOTDEL_TYPEDOC_INSERT
/

--
-- TOTDEL_TYPEDOC_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TOTDEL_TYPEDOC (Sequence)
--   TOTDEL_TYPEDOC (Table)
--
CREATE OR REPLACE TRIGGER ASU."TOTDEL_TYPEDOC_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TOTDEL_TYPEDOC  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
Begin
  SELECT SEQ_TOTDEL_TYPEDOC.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

