DROP FUNCTION ASU.GET_MIC_USE_ADD_LPU
/

--
-- GET_MIC_USE_ADD_LPU  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_MIC_USE_ADD_LPU
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 0;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_MIC_USE_ADD_LPU
/

--
-- GET_MIC_USE_ADD_LPU  (Synonym) 
--
--  Dependencies: 
--   GET_MIC_USE_ADD_LPU (Function)
--
CREATE PUBLIC SYNONYM GET_MIC_USE_ADD_LPU FOR ASU.GET_MIC_USE_ADD_LPU
/


GRANT EXECUTE ON ASU.GET_MIC_USE_ADD_LPU TO PUBLIC
/

