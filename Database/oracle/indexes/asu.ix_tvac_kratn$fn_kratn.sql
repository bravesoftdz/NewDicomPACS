DROP INDEX ASU.IX_TVAC_KRATN$FN_KRATN
/

--
-- IX_TVAC_KRATN$FN_KRATN  (Index) 
--
CREATE INDEX ASU.IX_TVAC_KRATN$FN_KRATN ON ASU.TVAC_KRATN
(FN_KRATN)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          4352K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

