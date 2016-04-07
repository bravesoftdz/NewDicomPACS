DROP FUNCTION ASU.GET_TALON_TYPE_CREATE_NAPR
/

--
-- GET_TALON_TYPE_CREATE_NAPR  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION ASU.GET_TALON_TYPE_CREATE_NAPR
  RETURN NUMBER DETERMINISTIC
  IS -- Created by -= aAdmin.exe =- 
     -- ATTENTION! DO NOT MODIFY THIS FUNCTION MANUALLY!!!
BEGIN
  Return 976459;
END;
/

SHOW ERRORS;


DROP PUBLIC SYNONYM GET_TALON_TYPE_CREATE_NAPR
/

--
-- GET_TALON_TYPE_CREATE_NAPR  (Synonym) 
--
--  Dependencies: 
--   GET_TALON_TYPE_CREATE_NAPR (Function)
--
CREATE PUBLIC SYNONYM GET_TALON_TYPE_CREATE_NAPR FOR ASU.GET_TALON_TYPE_CREATE_NAPR
/


GRANT EXECUTE ON ASU.GET_TALON_TYPE_CREATE_NAPR TO PUBLIC
/
