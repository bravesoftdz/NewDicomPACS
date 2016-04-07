DROP FUNCTION ASU.GET_PAC_SOCPOLID
/

--
-- GET_PAC_SOCPOLID  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TKARTA (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_PAC_SOCPOLID" (pFK_ID IN NUMBER)
RETURN NUMBER
 IS
  CURSOR c IS SELECT FK_COC_POLID FROM TKARTA WHERE FK_ID=pFK_ID;
  i NUMBER;
BEGIN
  OPEN c;
  FETCH c INTO i;
  CLOSE c;
  RETURN i;
END;
/

SHOW ERRORS;

