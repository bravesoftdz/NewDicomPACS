DROP PROCEDURE ASU.DO_INSERT_REGION
/

--
-- DO_INSERT_REGION  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TREGION (Table)
--
CREATE OR REPLACE PROCEDURE ASU."DO_INSERT_REGION" 
   ( FC_TEXT IN VARCHAR2)
   IS
BEGIN
  INSERT INTO TREGION(FK_ID,FC_NAME) VALUES(1,FC_TEXT);
END; -- Procedure
/

SHOW ERRORS;


