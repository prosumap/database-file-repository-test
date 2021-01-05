SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE Proc [dbo].[SpDailyUpdUpdVdrsOrdDtlOnSql040UpdLastUpdOnDt]
as 
Begin
/*
--For Testing the Update Statement below
--Returns 1 record
select *
from  tblSysPrefs
where tblSysPrefs.PrefType ='VdrsOrdDtlTblUpd'
*/

UPDATE tblSysPrefs SET tblSysPrefs.PrefVal1 = GetDate()
WHERE (((tblSysPrefs.PrefType)='VdrsOrdDtlTblUpd'));

End
GO
