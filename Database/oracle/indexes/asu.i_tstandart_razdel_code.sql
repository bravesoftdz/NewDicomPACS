DROP INDEX ASU.I_TSTANDART_RAZDEL_CODE
/

--
-- I_TSTANDART_RAZDEL_CODE  (Index) 
--
CREATE INDEX ASU.I_TSTANDART_RAZDEL_CODE ON ASU.TSTANDART
(FK_RAZDEL, FC_CODE)
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

