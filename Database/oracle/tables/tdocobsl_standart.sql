DROP TABLE ASU.TDOCOBSL_STANDART CASCADE CONSTRAINTS
/

--
-- TDOCOBSL_STANDART  (Table) 
--
CREATE TABLE ASU.TDOCOBSL_STANDART
(
  FK_DOCOBSL     NUMBER,
  FK_STANDARTID  NUMBER,
  FN_PRICE       NUMBER(8,2),
  FK_SOTRID      NUMBER,
  FD_DATE        DATE,
  FK_PACID       NUMBER,
  FK_PERESELID   NUMBER,
  FN_PRICE_BASE  NUMBER(8,2)
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

COMMENT ON TABLE ASU.TDOCOBSL_STANDART IS '������������� ������ �� ��������'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FK_DOCOBSL IS 'tdocobsl.fk_id'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FK_STANDARTID IS 'tstandart.fk_id'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FN_PRICE IS '�� ��� ��������'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FK_SOTRID IS '��������� ���������'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FD_DATE IS '���� ��������'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FK_PACID IS '������� tkarta.fk_id'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FK_PERESELID IS 'tperesel.fk_id'
/

COMMENT ON COLUMN ASU.TDOCOBSL_STANDART.FN_PRICE_BASE IS '�� ��� ������ ��� ���������'
/


--
-- TDOCOBSL_STANDART_BY_DOCOBSL  (Index) 
--
--  Dependencies: 
--   TDOCOBSL_STANDART (Table)
--
CREATE INDEX ASU.TDOCOBSL_STANDART_BY_DOCOBSL ON ASU.TDOCOBSL_STANDART
(FK_DOCOBSL)
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

