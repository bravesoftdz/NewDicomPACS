DROP INDEX ASU.TPACMONITOR_INDEXES_BY_SMID
/

--
-- TPACMONITOR_INDEXES_BY_SMID  (Index) 
--
CREATE INDEX ASU.TPACMONITOR_INDEXES_BY_SMID ON ASU.TPACMONITOR_INDEXES
(FK_PACID, FK_SMID)
NOLOGGING
TABLESPACE INDX
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


