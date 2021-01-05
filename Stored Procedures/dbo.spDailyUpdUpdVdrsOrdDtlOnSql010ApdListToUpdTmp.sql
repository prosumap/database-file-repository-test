SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create   proc [dbo].[spDailyUpdUpdVdrsOrdDtlOnSql010ApdListToUpdTmp]
as 
begin
INSERT INTO tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd
SELECT [F21_VDRS_ORDER_DETAIL F21].*
FROM [F21_VDRS_ORDER_DETAIL F21];
--WHERE ((([F21_VDRS_ORDER_DETAIL F21].LAST_UPDATED_DATETIME)>=format(cast([TempVars]!=[VdrsOrdDtlLastUpOn])-7),'yyyy-MM-dd hh:mm:ss tt'));
end
GO
