DROP INDEX ASU.TTYPEDOC$FC_SYNONIM
/

--
-- TTYPEDOC$FC_SYNONIM  (Index) 
--
CREATE INDEX ASU.TTYPEDOC$FC_SYNONIM ON ASU.TTYPEDOC
(FC_SYNONIM)
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

