SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/12/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd290ApdDailyShip] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyShip
                         (Trans#, Order#, INV10, INV7, Ship_Date, Status, Line_Catalog, Ship_Net$, Ship_Gross$, Ship_Cost$, Ship_Units, Ship_RsnCd, Ship_RsnDesc, Ship_Fiscal_Wk, Ship_Fiscal_Month#, Ship_Fiscal_Month, Ship_Fiscal_Qtr, 
                         Ship_Fiscal_Year, Ship_Season, Ship_YYYYWK, DSeq)
SELECT        vwDailyUpdSlct_Trans2.ItemTransBP AS Trans#, vwDailyUpdSlct_Trans2.OhId AS Order#, vwDailyUpdSlct_Trans2.SkuId AS INV10, LEFT(vwDailyUpdSlct_Trans2.SkuId, 7) AS INV7, vwDailyUpdSlct_Trans2.Cdatedt AS Ship_Date,
                          vwDailyUpdSlct_Trans2.Status, vwDailyUpdSlct_Trans2.ItemCatId AS Line_Catalog, vwDailyUpdSlct_Trans2.Net$ AS Ship_Net$, vwDailyUpdSlct_Trans2.Gross$ AS Ship_Gross$, 
                         vwDailyUpdSlct_Trans2.TransQQ * RefTbl_OPCSProdSku.Cost AS Ship_Cost$, vwDailyUpdSlct_Trans2.TransQQ AS Ship_Units, vwDailyUpdSlct_Trans2.CustRsnCd AS Ship_RsnCd, 
                         vwDailyUpdSlct_Trans2.[Rsn Desc] AS Ship_RsnDesc, vwDailyUpdSlct_Trans2.FiscalWk AS Ship_Fiscal_Wk, vwDailyUpdSlct_Trans2.MonthNo AS Ship_Fiscal_Month#, 
                         vwDailyUpdSlct_Trans2.MonthDesc AS Ship_Fiscal_Month, vwDailyUpdSlct_Trans2.Qtr AS Ship_Fiscal_Qtr, vwDailyUpdSlct_Trans2.Year AS Ship_Fiscal_Year, vwDailyUpdSlct_Trans2.[Season of Year] AS Ship_Season, 
                         vwDailyUpdSlct_Trans2.YYYYWK AS Ship_YYYYWK, vwDailyUpdSlct_Trans2.DSeq
FROM            RefTbl_OPCSProdSku RIGHT OUTER JOIN
                         vwDailyUpdSlct_Trans2 ON RefTbl_OPCSProdSku.INV = vwDailyUpdSlct_Trans2.SkuId
WHERE        (vwDailyUpdSlct_Trans2.Type = N'PK')


END
GO
