SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/12/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd300ApdDailyExch] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyExch
                         (Trans#, Order#, INV10, Exch_Date, Status, Line_Catalog, Exch_Net$, Exch_Gross$, Exch_Cost$, Exch_Units, Exch_RsnCd, Exch_RsnDesc, Exch_Fiscal_Wk, Exch_Fiscal_Month#, Exch_Fiscal_Month, Exch_Fiscal_Qtr, 
                         Exch_Fiscal_Year, Exch_Season, Exch_YYYYWK, DSeq)
SELECT        vwDailyUpdSlct_Trans2.ItemTransBP AS Trans#, vwDailyUpdSlct_Trans2.OhId AS Order#, vwDailyUpdSlct_Trans2.SkuId AS INV10, vwDailyUpdSlct_Trans2.Cdatedt AS Exch_Date, vwDailyUpdSlct_Trans2.Status, 
                         vwDailyUpdSlct_Trans2.ItemCatId AS Line_Catalog, vwDailyUpdSlct_Trans2.Net$ AS Exch_Net$, vwDailyUpdSlct_Trans2.Gross$ AS Exch_Gross$, vwDailyUpdSlct_Trans2.TransQQ * RefTbl_OPCSProdSku.Cost AS Exch_Cost$, 
                         vwDailyUpdSlct_Trans2.TransQQ AS Exch_Units, vwDailyUpdSlct_Trans2.CustRsnCd AS Exch_RsnCd, vwDailyUpdSlct_Trans2.[Rsn Desc] AS Exch_RsnDesc, vwDailyUpdSlct_Trans2.FiscalWk AS Exch_Fiscal_Wk, 
                         vwDailyUpdSlct_Trans2.MonthNo AS Exch_Fiscal_Month#, vwDailyUpdSlct_Trans2.MonthDesc AS Exch_Fiscal_Month, vwDailyUpdSlct_Trans2.Qtr AS Exch_Fiscal_Qtr, vwDailyUpdSlct_Trans2.Year AS Exch_Fiscal_Year, 
                         vwDailyUpdSlct_Trans2.[Season of Year] AS Exch_Season, vwDailyUpdSlct_Trans2.YYYYWK AS Exch_YYYYWK, vwDailyUpdSlct_Trans2.DSeq
FROM            vwDailyUpdSlct_Trans2 LEFT OUTER JOIN
                         RefTbl_OPCSProdSku ON vwDailyUpdSlct_Trans2.SkuId = RefTbl_OPCSProdSku.INV
WHERE        (vwDailyUpdSlct_Trans2.Type = N'RE') OR
                         (vwDailyUpdSlct_Trans2.Type = N'IR')


END
GO
