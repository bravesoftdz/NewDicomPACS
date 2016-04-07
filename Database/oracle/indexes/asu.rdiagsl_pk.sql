DROP INDEX ASU.RDIAGSL_PK
/

--
-- RDIAGSL_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.RDIAGSL_PK ON ASU.TDIAGSL
(FK_SLINFOID, FK_DIAGID)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

