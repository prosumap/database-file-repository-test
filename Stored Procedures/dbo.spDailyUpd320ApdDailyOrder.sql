SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd320ApdDailyOrder] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyOrder
                         (Status, Line_Catalog, Item_Date, Ticket, AUR, Cost, Dmnd_Units, Dmnd_Net$, Dmnd_Gross$, Dmnd_Cost$, ImmCx_Units, ImmCxl_Net$, ImmCxl_Gross$, ImmCxl_Cost$, Ord_Fiscal_Wk, Ord_Fiscal_Month#, Ord_Fiscal_Month, 
                         Ord_Fiscal_Qtr, Ord_Fiscal_Year, Ord_Season, Ord_YYYYWK, [Dtl Seq])
SELECT        CASE LEFT(CAST(RTRIM(LTRIM(MkTbl_Ord_Dtl.Cat)) AS NVARCHAR(20)), 1) WHEN '2' THEN 'MD' ELSE 'FP' END AS Status, RTRIM(LTRIM(MkTbl_Ord_Dtl.Cat)) AS Line_Catalog, MkTbl_Ord_Dtl.ItemDt AS Item_Date, 
                         MkTbl_Ord_Dtl.GPriceDD AS Ticket, MkTbl_Ord_Dtl.[Net Price] AS AUR, MkTbl_Ord_Dtl.InvCostDD AS Cost, SUM(MkTbl_Ord_Dtl.Ordrd) AS Dmnd_Units, SUM(MkTbl_Ord_Dtl.[Net Price] * MkTbl_Ord_Dtl.Ordrd) AS Dmnd_Net$, 
                         SUM(MkTbl_Ord_Dtl.GPriceDD * MkTbl_Ord_Dtl.Ordrd) AS Dmnd_Gross$, SUM(MkTbl_Ord_Dtl.InvCostDD * MkTbl_Ord_Dtl.Ordrd) AS Dmnd_Cost$, SUM(MkTbl_Ord_Dtl.POS) AS ImmCx_Units, 
                         SUM(MkTbl_Ord_Dtl.POS * MkTbl_Ord_Dtl.[Net Price]) AS ImmCxl_Net$, SUM(MkTbl_Ord_Dtl.POS * MkTbl_Ord_Dtl.GPriceDD) AS ImmCxl_Gross$, SUM(MkTbl_Ord_Dtl.POS * MkTbl_Ord_Dtl.InvCostDD) AS ImmCxl_Cost$, 
                         RefTbl_Calendar.FiscalWk AS Ord_Fiscal_Wk, RefTbl_Calendar.MonthNo AS Ord_Fiscal_Month#, RefTbl_Calendar.MonthDesc AS Ord_Fiscal_Month, RefTbl_Calendar.Qtr AS Ord_Fiscal_Qtr, 
                         RefTbl_Calendar.Year AS Ord_Fiscal_Year, RefTbl_Calendar.[Season of Year] AS Ord_Season, RefTbl_Calendar.YYYYWK AS Ord_YYYYWK, MkTbl_Ord_Dtl.[Dtl Seq]
FROM            RefTbl_Calendar RIGHT OUTER JOIN
                         MkTbl_Ord_Dtl ON RefTbl_Calendar.Date = MkTbl_Ord_Dtl.ItemDt
GROUP BY RTRIM(LTRIM(MkTbl_Ord_Dtl.Cat)), MkTbl_Ord_Dtl.ItemDt, MkTbl_Ord_Dtl.GPriceDD, MkTbl_Ord_Dtl.[Net Price], MkTbl_Ord_Dtl.InvCostDD, RefTbl_Calendar.FiscalWk, RefTbl_Calendar.MonthNo, RefTbl_Calendar.MonthDesc, 
                         RefTbl_Calendar.Qtr, RefTbl_Calendar.Year, RefTbl_Calendar.[Season of Year], RefTbl_Calendar.YYYYWK, CASE LEFT(CAST(RTRIM(LTRIM(MkTbl_Ord_Dtl.Cat)) AS NVARCHAR(20)), 1) WHEN '2' THEN 'MD' ELSE 'FP' END, 
                         MkTbl_Ord_Dtl.[Dtl Seq]


END
GO
