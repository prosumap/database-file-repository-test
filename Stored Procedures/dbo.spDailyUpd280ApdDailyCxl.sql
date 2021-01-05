SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/12/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd280ApdDailyCxl] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyCxl
                         (Trans#, Order#, INV10, Cxl_Date, Status, Line_Catalog, Cxl_Net$, Cxl_Gross$, Cxl_Cost$, Cxl_Units, Cxl_RsnCd, Cxl_RsnDesc, Cxl_Fiscal_Wk, Cxl_Fiscal_Month#, Cxl_Fiscal_Month, Cxl_Fiscal_Qtr, Cxl_Fiscal_Year, 
                         Cxl_Season, Cxl_YYYYWK, DSeq)
SELECT        vwDailyUpdSlct_Trans2.ItemTransBP AS Trans#, vwDailyUpdSlct_Trans2.OhId AS Order#, vwDailyUpdSlct_Trans2.SkuId AS INV10, vwDailyUpdSlct_Trans2.Cdatedt AS Cxl_Date, vwDailyUpdSlct_Trans2.Status, 
                         vwDailyUpdSlct_Trans2.ItemCatId AS Line_Catalog, vwDailyUpdSlct_Trans2.Net$ AS Cxl_Net$, vwDailyUpdSlct_Trans2.Gross$ AS Cxl_Gross$, vwDailyUpdSlct_Trans2.TransQQ * RefTbl_OPCSProdSku.Cost AS Cxl_Cost$, 
                         vwDailyUpdSlct_Trans2.TransQQ AS Cxl_Units, vwDailyUpdSlct_Trans2.CustRsnCd AS Cxl_RsnCd, vwDailyUpdSlct_Trans2.[Rsn Desc] AS Cxl_RsnDesc, vwDailyUpdSlct_Trans2.FiscalWk AS Cxl_Fiscal_Wk, 
                         vwDailyUpdSlct_Trans2.MonthNo AS Cxl_Fiscal_Month#, vwDailyUpdSlct_Trans2.MonthDesc AS Cxl_Fiscal_Month, vwDailyUpdSlct_Trans2.Qtr AS Cxl_Fiscal_Qtr, vwDailyUpdSlct_Trans2.Year AS Cxl_Fiscal_Year, 
                         vwDailyUpdSlct_Trans2.[Season of Year] AS Cxl_Season, vwDailyUpdSlct_Trans2.YYYYWK AS Cxl_YYYYWK, vwDailyUpdSlct_Trans2.DSeq
FROM            vwDailyUpdSlct_Trans2 LEFT OUTER JOIN
                         RefTbl_OPCSProdSku ON vwDailyUpdSlct_Trans2.SkuId = RefTbl_OPCSProdSku.INV
WHERE        (vwDailyUpdSlct_Trans2.Type = N'CX')

END
GO
