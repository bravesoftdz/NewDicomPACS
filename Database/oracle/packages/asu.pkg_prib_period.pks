DROP PACKAGE ASU.PKG_PRIB_PERIOD
/

--
-- PKG_PRIB_PERIOD  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_PRIB_PERIOD" 
  IS
  FUNCTION GET_PRIB_PERIOD (DATA1 IN DATE, DATA2 IN DATE, VRACH_ID IN NUMBER)
    RETURN NUMBER;

END; -- Package Specification PKG_PRIB_PERIOD
/

SHOW ERRORS;

