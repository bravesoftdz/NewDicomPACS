DROP INDEX ASU.TRESMED$RECEPTID
/

--
-- TRESMED$RECEPTID  (Index) 
--
CREATE INDEX ASU.TRESMED$RECEPTID ON ASU.TRESMED
(FK_RECEPTID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          640K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


