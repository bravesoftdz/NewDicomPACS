DROP TRIGGER ASU.T_SDF_ELEMENT_BEFORE_INSERT
/

--
-- T_SDF_ELEMENT_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_T_SDF_ELEMENT (Sequence)
--   T_SDF_ELEMENT (Table)
--
CREATE OR REPLACE TRIGGER ASU."T_SDF_ELEMENT_BEFORE_INSERT" 
 BEFORE
  INSERT
 ON t_sdf_element
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  SELECT SEQ_T_SDF_ELEMENT.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
END;
/
SHOW ERRORS;

