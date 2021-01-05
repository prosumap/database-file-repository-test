SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/12/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd310ApdDailyRtn] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyRtn
                         (Trans#, Order#, INV10, Rtn_Date, Status, Line_Catalog, Rtn_Net$, Rtn_Gross$, Rtn_Cost$, Rtn_Units, Rtn_RsnCd, Rtn_RsnDesc, Rtn_Fiscal_Wk, Rtn_Fiscal_Month#, Rtn_Fiscal_Month, Rtn_Fiscal_Qtr, Rtn_Fiscal_Year, 
                         Rtn_Season, Rtn_YYYYWK, DSeq)
SELECT        vwDailyUpdSlct_Trans2.ItemTransBP AS Trans#, vwDailyUpdSlct_Trans2.OhId AS Order#, vwDailyUpdSlct_Trans2.SkuId AS INV10, vwDailyUpdSlct_Trans2.Cdatedt AS Rtn_Date, vwDailyUpdSlct_Trans2.Status, 
                         vwDailyUpdSlct_Trans2.ItemCatId AS Line_Catalog, vwDailyUpdSlct_Trans2.Net$ AS Rtn_Net$, vwDailyUpdSlct_Trans2.Gross$ AS Rtn_Gross$, vwDailyUpdSlct_Trans2.TransQQ * RefTbl_OPCSProdSku.Cost AS Rtn_Cost$, 
                         vwDailyUpdSlct_Trans2.TransQQ AS Rtn_Units, vwDailyUpdSlct_Trans2.CustRsnCd AS Rtn_RsnCd, vwDailyUpdSlct_Trans2.[Rsn Desc] AS Rtn_RsnDesc, vwDailyUpdSlct_Trans2.FiscalWk AS Rtn_Fiscal_Wk, 
                         vwDailyUpdSlct_Trans2.MonthNo AS Rtn_Fiscal_Month#, vwDailyUpdSlct_Trans2.MonthDesc AS Rtn_Fiscal_Month, vwDailyUpdSlct_Trans2.Qtr AS Rtn_Fiscal_Qtr, vwDailyUpdSlct_Trans2.Year AS Rtn_Fiscal_Year, 
                         vwDailyUpdSlct_Trans2.[Season of Year] AS Rtn_Season, vwDailyUpdSlct_Trans2.YYYYWK AS Rtn_YYYYWK, vwDailyUpdSlct_Trans2.DSeq
FROM            vwDailyUpdSlct_Trans2 LEFT OUTER JOIN
                         RefTbl_OPCSProdSku ON vwDailyUpdSlct_Trans2.SkuId = RefTbl_OPCSProdSku.INV
WHERE        (vwDailyUpdSlct_Trans2.Type = N'RR')



END
GO
