DROP PROCEDURE ASU.DO_COPY_LAST_EXCH_TO_ARCHIVE
/

--
-- DO_COPY_LAST_EXCH_TO_ARCHIVE  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBF_EXCH_EXAM_TO_ARCH (Procedure)
--   TSLUCH_DBF (Table)
--   TSLUCH_DBF_ARCHIVE (Table)
--   DO_SYN_EXCH_IN_ARCHIVE (Procedure)
--   TUSL_DBF (Table)
--   TUSL_DBF_ARCHIVE (Table)
--   TEXSLUCH_ERR (Table)
--   TEXSLUCH_ERR_ARCHIVE (Table)
--
CREATE OR REPLACE PROCEDURE ASU.DO_COPY_LAST_EXCH_TO_ARCHIVE is
-- Efimov V.A. 20110908 ����������� � ���������� ����������, ����� ������ �� �������� ������ ������� ����� commit,
-- ������� ��������� ��������� ��� ������� TUSL_DBF_ARCHIVE, ����� ��������� ������ (������ � TUSL_DBF_ARCHIVE �  TUSL_DBF ���� ������ � ����������� fk_id, ��� ������ ������� �� ����)
  pragma autonomous_transaction;

  nMonth number;
  nYear  number;
begin
  select Max(month), max(year) into nMonth, nYear from ASU.TUSL_DBF where rownum = 1;

  if (nMonth is not NULL) and (nYear is not NULL) then
    delete from ASU.TUSL_DBF_ARCHIVE
     where MONTH = nMonth
       and YEAR = nYear;
    insert into ASU.TUSL_DBF_ARCHIVE
      (OWN,
       TYPE_FIN,
       GLOBAL_ID,
       YEAR,
       MONTH,
       LPU_ID,
       LPU_NAPR,
       TFOMS_ID,
       PERSON_IDL,
       ID_ILL,
       POLICYSER,
       POLICYNUM,
       TYPE_USL,
       DATE_B_U,
       DATE_E_U,
       V_MU,
       PR_MP,
       KOD_MU,
       KOL_MU,
       TYPE_EO,
       KOD_EO,
       KOL_EO,
       COST_EO,
       SUM_EO,
       N_QU,
       N_TOOTH,
       P_TOOTH,
       N_QU2,
       N_TOOTH2,
       P_TOOTH2,
       N_QU3,
       N_TOOTH3,
       P_TOOTH3,
       N_QU4,
       N_TOOTH4,
       P_TOOTH4,
       N_QU5,
       N_TOOTH5,
       P_TOOTH5,
       N_QU6,
       N_TOOTH6,
       P_TOOTH6,
       N_QU7,
       N_TOOTH7,
       P_TOOTH7,
       N_QU8,
       N_TOOTH8,
       P_TOOTH8,
       DOC_CD_U,
       PRVSM_U,
       P_ID_ILL,
       LPU_INTR,
       COST_MODER,
       SUM_MODERN,
       Z$NAZ_ID,
       Z$FL_POLY,
       FK_SLUCHID,
       FK_PREGROUPSLUCHID,
       ID_ILL_U,
       FK_GROUPUSL,
       FK_KOYKAVIDID,
       FK_SOTRID,
       COST_MODER_F,
       MODERN_CODE)
      select OWN,
             TYPE_FIN,
             GLOBAL_ID,
             YEAR,
             MONTH,
             LPU_ID,
             LPU_NAPR,
             TFOMS_ID,
             PERSON_IDL,
             ID_ILL,
             POLICYSER,
             POLICYNUM,
             TYPE_USL,
             DATE_B_U,
             DATE_E_U,
             V_MU,
             PR_MP,
             KOD_MU,
             KOL_MU,
             TYPE_EO,
             KOD_EO,
             KOL_EO,
             COST_EO,
             SUM_EO,
             N_QU,
             N_TOOTH,
             P_TOOTH,
             N_QU2,
             N_TOOTH2,
             P_TOOTH2,
             N_QU3,
             N_TOOTH3,
             P_TOOTH3,
             N_QU4,
             N_TOOTH4,
             P_TOOTH4,
             N_QU5,
             N_TOOTH5,
             P_TOOTH5,
             N_QU6,
             N_TOOTH6,
             P_TOOTH6,
             N_QU7,
             N_TOOTH7,
             P_TOOTH7,
             N_QU8,
             N_TOOTH8,
             P_TOOTH8,
             DOC_CD_U,
             PRVSM_U,
             P_ID_ILL,
             LPU_INTR,
             COST_MODER,
             SUM_MODERN,
             Z$NAZ_ID,
             Z$FL_POLY,
             FK_SLUCHID,
             FK_PREGROUPSLUCHID,
             ID_ILL_U,
             FK_GROUPUSL,
             FK_KOYKAVIDID,
             FK_SOTRID,
             COST_MODER_F,
             MODERN_CODE
        from ASU.TUSL_DBF;

    delete from ASU.TSLUCH_DBF_ARCHIVE
     where MONTH = nMonth
       and YEAR = nYear;
    insert into asu.tsluch_dbf_archive
      (OWN,
       TYPE_FIN,
       TFOMS_ID,
       YEAR,
       MONTH,
       TER_OKATO,
       LPU_ID,
       LPU_NAPR,
       LPU_INTR,
       GLOBAL_ID,
       PERSON_IDL,
       ID_ILL,
       POLICYSER,
       POLICYNUM,
       FAM,
       IM,
       OTCH,
       DATE_B_DAY,
       POL,
       DIA_SD,
       DIA_O,
       DIA_C,
       DIA_E,
       DATE_S,
       DATE_E,
       DATE_NAPR,
       Q_U,
       V_MU,
       PR_MP,
       TYPE_MP,
       DESTROY,
       Q_Z,
       RES_G,
       RESG_DOP,
       DISP,
       NOVOR,
       TOTAL,
       N_NAPR,
       N_MAP,
       N_MAP_AMB,
       OPER_ID,
       NARKOZ_ID,
       SMK_NAME,
       SN_PASP,
       D_TYPE,
       P_ID_ILL,
       TFOMS_REG,
       DATE_NPOL,
       DATE_EPOL,
       STAT_P,
       FAMP,
       IMP,
       OTP,
       C_OKSM,
       C_DOC,
       S_DOC,
       N_DOC,
       R_NAME,
       C_NAME,
       Q_NP,
       NP_NAME,
       Q_UL,
       UL_NAME,
       DOM,
       KOR,
       KV,
       STAT_Z,
       PRVS,
       VID_P,
       Q_OGRN,
       STANDARD,
       MR,
       SNILS,
       OKATOG,
       OKATOP,
       POLP,
       DRP,
       TYPE_V_MU,
       MODERN,
       SUM_MODERN,
       Z$FL_POLY,
       FN_ROWNUM,
       FK_GROUPSLUCHID,
       SMO)
      select OWN,
             TYPE_FIN,
             TFOMS_ID,
             YEAR,
             MONTH,
             TER_OKATO,
             LPU_ID,
             LPU_NAPR,
             LPU_INTR,
             GLOBAL_ID,
             PERSON_IDL,
             ID_ILL,
             POLICYSER,
             POLICYNUM,
             FAM,
             IM,
             OTCH,
             DATE_B_DAY,
             POL,
             DIA_SD,
             DIA_O,
             DIA_C,
             DIA_E,
             DATE_S,
             DATE_E,
             DATE_NAPR,
             Q_U,
             V_MU,
             PR_MP,
             TYPE_MP,
             DESTROY,
             Q_Z,
             RES_G,
             RESG_DOP,
             DISP,
             NOVOR,
             TOTAL,
             N_NAPR,
             N_MAP,
             N_MAP_AMB,
             OPER_ID,
             NARKOZ_ID,
             SMK_NAME,
             SN_PASP,
             D_TYPE,
             P_ID_ILL,
             TFOMS_REG,
             DATE_NPOL,
             DATE_EPOL,
             STAT_P,
             FAMP,
             IMP,
             OTP,
             C_OKSM,
             C_DOC,
             S_DOC,
             N_DOC,
             R_NAME,
             C_NAME,
             Q_NP,
             NP_NAME,
             Q_UL,
             UL_NAME,
             DOM,
             KOR,
             KV,
             STAT_Z,
             PRVS,
             VID_P,
             Q_OGRN,
             STANDARD,
             MR,
             SNILS,
             OKATOG,
             OKATOP,
             POLP,
             DRP,
             TYPE_V_MU,
             MODERN,
             SUM_MODERN,
             Z$FL_POLY,
             FN_ROWNUM,
             FK_GROUPSLUCHID,
             SMO
        from asu.tsluch_dbf;

    delete from asu.texsluch_err_archive
     where MONTH = nMonth
       and YEAR = nYear;
    insert into asu.texsluch_err_archive
      (GLOBAL_ID,
       YEAR,
       MONTH,
       LPU_ID,
       PERSON_IDL,
       ID_ILL,
       ID_ILL_U,
       P_ID_ILL,
       VO,
       FC_CODE,
       FK_SLUCHID,
       FN_IS_LOAD,
       FC_MSG_ERR,
       FC_FIELDS,
       POLICYSER,
       POLICYNUM,
       TYPE_FILE,
       FK_USLID,
       FK_SLUCHLOADID)
      SELECT GLOBAL_ID,
             YEAR,
             MONTH,
             LPU_ID,
             PERSON_IDL,
             ID_ILL,
             ID_ILL_U,
             P_ID_ILL,
             VO,
             FC_CODE,
             FK_SLUCHID,
             FN_IS_LOAD,
             FC_MSG_ERR,
             FC_FIELDS,
             POLICYSER,
             POLICYNUM,
             TYPE_FILE,
             FK_USLID,
             FK_SLUCHLOADID
        FROM asu.texsluch_err;

    asu.DBF_EXCH_EXAM_TO_ARCH(0);

    asu.DO_SYN_EXCH_IN_ARCHIVE(nYear, nMonth);

    commit;
  end if;

end DO_COPY_LAST_EXCH_TO_ARCHIVE;
/

SHOW ERRORS;

