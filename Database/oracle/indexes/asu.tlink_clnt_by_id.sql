DROP INDEX ASU.TLINK_CLNT_BY_ID
/

--
-- TLINK_CLNT_BY_ID  (Index) 
--
CREATE INDEX ASU.TLINK_CLNT_BY_ID ON ASU.TLINK_CLNT
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1040K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

