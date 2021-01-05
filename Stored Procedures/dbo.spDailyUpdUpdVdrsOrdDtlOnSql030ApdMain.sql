SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE proc [dbo].[spDailyUpdUpdVdrsOrdDtlOnSql030ApdMain]
as
begin
INSERT INTO F21_VDRS_ORDER_DETAIL
SELECT tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd.*
FROM tmpDailyUpdUpdVdrsOrdDtlOnSqlListToUpd
end
GO
