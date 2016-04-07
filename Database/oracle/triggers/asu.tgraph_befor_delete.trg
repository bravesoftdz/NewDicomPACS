DROP TRIGGER ASU.TGRAPH_BEFOR_DELETE
/

--
-- TGRAPH_BEFOR_DELETE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TGRAPH (Table)
--   TPACLST (Table)
--
CREATE OR REPLACE TRIGGER ASU."TGRAPH_BEFOR_DELETE" 
 BEFORE 
 DELETE
 ON ASU.TGRAPH  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
  nTemp NUMBER;
BEGIN
  delete from tpaclst where fk_graphid=:old.fk_id;
End;
/
SHOW ERRORS;

