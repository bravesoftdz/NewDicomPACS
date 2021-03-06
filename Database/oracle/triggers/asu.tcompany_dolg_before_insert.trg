DROP TRIGGER ASU.TCOMPANY_DOLG_BEFORE_INSERT
/

--
-- TCOMPANY_DOLG_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TCOMPANY_DOLGNOST (Sequence)
--   TCOMPANY_DOLGNOST (Table)
--
CREATE OR REPLACE TRIGGER ASU."TCOMPANY_DOLG_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TCOMPANY_DOLGNOST REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TCOMPANY_DOLGNOST.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


