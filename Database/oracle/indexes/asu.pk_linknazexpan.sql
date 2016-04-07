DROP INDEX ASU.PK_LINKNAZEXPAN
/

--
-- PK_LINKNAZEXPAN  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_LINKNAZEXPAN ON ASU.TLINKNAZEXPAN
(FK_ID)
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

