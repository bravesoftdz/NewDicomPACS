DROP INDEX ASU.TNAZRASPRED_ALL
/

--
-- TNAZRASPRED_ALL  (Index) 
--
CREATE INDEX ASU.TNAZRASPRED_ALL ON ASU.TNAZRASPRED
(FK_ID, FK_SMID, FK_SPEC)
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

