DROP INDEX ASU.IX_TSTANDART_HEAL$FK_HEAL
/

--
-- IX_TSTANDART_HEAL$FK_HEAL  (Index) 
--
CREATE INDEX ASU.IX_TSTANDART_HEAL$FK_HEAL ON ASU.TSTANDART_HEAL
(FK_HEAL)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          800K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


