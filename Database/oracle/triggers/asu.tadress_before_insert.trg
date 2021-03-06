DROP TRIGGER ASU.TADRESS_BEFORE_INSERT
/

--
-- TADRESS_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   V$SESSION (Synonym)
--   DUAL (Synonym)
--   TADRESS (Table)
--   SEQ_TADRESS (Sequence)
--
CREATE OR REPLACE TRIGGER ASU."TADRESS_BEFORE_INSERT" 
 BEFORE 
 INSERT
 ON ASU.TADRESS  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
 nAppSotr NUMBER;
BEGIN
-- Added 20081003 by Linnikov
 SELECT TO_NUMBER(NVL(CLIENT_INFO, '0'))
   INTO nAppSotr
   FROM v$session
  WHERE AUDSID = USERENV('SESSIONID');

 SELECT SEQ_TAdress.NEXTVAL, SYSDATE, nAppSotr
   INTO :NEW.FK_ID, :NEW.FD_DATE, :NEW.FK_APPSOTRID
   FROM DUAL;
   /*SELECT SEQ_TAdress.NEXTVAL
   INTO :NEW.FK_ID
   FROM DUAL;*/
   
   NULL;
END;
/
SHOW ERRORS;


