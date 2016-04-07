DROP INDEX ASU.IX_TLPY_THERPOINS_FK_THERPOINT
/

--
-- IX_TLPY_THERPOINS_FK_THERPOINT  (Index) 
--
CREATE INDEX ASU.IX_TLPY_THERPOINS_FK_THERPOINT ON ASU.TLPY_THERPOINS
(FK_COMPANY_LPY)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

