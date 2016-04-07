DROP TABLE ASU.TDISPUSLOV CASCADE CONSTRAINTS
/

--
-- TDISPUSLOV  (Table) 
--
CREATE TABLE ASU.TDISPUSLOV
(
  FK_ID                  NUMBER                 NOT NULL,
  FK_DIAGID              NUMBER,
  FK_DIAGETAPID          NUMBER,
  FK_DIAGSTADSTEPLECHID  NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


--
-- TDISPUSL_DIAGETAPID  (Index) 
--
--  Dependencies: 
--   TDISPUSLOV (Table)
--
CREATE INDEX ASU.TDISPUSL_DIAGETAPID ON ASU.TDISPUSLOV
(FK_DIAGETAPID)
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


--
-- TDISPUSL_FK_DIAGID  (Index) 
--
--  Dependencies: 
--   TDISPUSLOV (Table)
--
CREATE INDEX ASU.TDISPUSL_FK_DIAGID ON ASU.TDISPUSLOV
(FK_DIAGID)
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


--
-- TDISPUSL_FK_ID  (Index) 
--
--  Dependencies: 
--   TDISPUSLOV (Table)
--
CREATE UNIQUE INDEX ASU.TDISPUSL_FK_ID ON ASU.TDISPUSLOV
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


--
-- TDISPUSL_FK_STADSTEPLECHID  (Index) 
--
--  Dependencies: 
--   TDISPUSLOV (Table)
--
CREATE INDEX ASU.TDISPUSL_FK_STADSTEPLECHID ON ASU.TDISPUSLOV
(FK_DIAGSTADSTEPLECHID)
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


--
-- TDISPUSLOV_INSERT  (Trigger) 
--
--  Dependencies: 
--   TDISPUSLOV (Table)
--
CREATE OR REPLACE TRIGGER ASU."TDISPUSLOV_INSERT" 
  BEFORE INSERT
  ON ASU.TDISPUSLOV   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select SEQ_TDISPUSLOV.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;

