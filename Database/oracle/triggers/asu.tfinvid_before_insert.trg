DROP TRIGGER ASU.TFINVID_BEFORE_INSERT
/

--
-- TFINVID_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TFINVID (Sequence)
--   TFINVID (Table)
--
CREATE OR REPLACE TRIGGER ASU.tfinvid_before_insert
 BEFORE
  INSERT
 ON ASU.TFINVID REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
  if :NEW.FK_ID is null then
    SELECT SEQ_TFINVID.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  end if;
end;
/
SHOW ERRORS;

