SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE  Proc [dbo].[spDailyUpdUpdVdrsOrdDtlOnSql020DelFromSqlMain]
as
begin
DELETE from  F21_VDRS_ORDER_DETAIL where Order_line in (select tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd.Order_line from  tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd INNER JOIN
F21_VDRS_ORDER_DETAIL ON (tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd.ORDER_LINE = F21_VDRS_ORDER_DETAIL.ORDER_LINE) 
AND (tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd.ORDER_NO = F21_VDRS_ORDER_DETAIL.ORDER_NO));
end
GO
