DROP PACKAGE ASU.PKG_RODDOM
/

--
-- PKG_RODDOM  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_RODDOM" IS

 FUNCTION GET_RODY_DATE(pPacid NUMBER) RETURN DATE;
 FUNCTION GET_SROK_BEREM_WEEK(pPacid NUMBER, pdate DATE DEFAULT SYSDATE) RETURN NUMBER;
 FUNCTION GET_SROK_AFTER_RODI(pPacid NUMBER) RETURN VARCHAR2;
 FUNCTION GET_SROK_AFTER_BIRTH(pPacid NUMBER) RETURN VARCHAR2;
 FUNCTION GET_PREDP_RODY_DATE(pPacid NUMBER) RETURN DATE;
 FUNCTION GET_JAKUB_MASS(pPacid NUMBER) RETURN NUMBER;
 FUNCTION GET_JORDAN_MASS(pPacid NUMBER) RETURN NUMBER;
 FUNCTION GET_DK(pPacid NUMBER) RETURN NUMBER;
 FUNCTION GET_DMP(pPacid NUMBER) RETURN NUMBER;
 FUNCTION GET_RASCH_RODY_DATE(pPacid NUMBER) RETURN DATE;

 FUNCTION GET_ISNOVOR_ROD_ALIVE(pPacid NUMBER) RETURN NUMBER;
 FUNCTION GET_ISNOVOR_DONOSHEN(pPacid NUMBER) RETURN NUMBER;
 FUNCTION GET_NOVOR_MASS(pPacid NUMBER) RETURN NUMBER;

END PKG_RODDOM;
/

SHOW ERRORS;

