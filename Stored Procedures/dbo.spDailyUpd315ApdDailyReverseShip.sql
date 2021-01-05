SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 12/21/19
-- From DB_OPCS_Trans_2.accdb
-- To replace qMkTbl_DailyReverseShip
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd315ApdDailyReverseShip] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_DailyReverseShip
                         (Trans#, Order#, INV10, INV7, ReverseShip_Date, Status, Line_Catalog, ReverseShip_Net$, ReverseShip_Gross$, ReverseShip_Cost$, ReverseShip_Units, ReverseShip_RsnCd, ReverseShip_RsnDesc, 
                         ReverseShip_Fiscal_Wk, ReverseShip_Fiscal_Month#, ReverseShip_Fiscal_Month, ReverseShip_Fiscal_Qtr, ReverseShip_Fiscal_Year, ReverseShip_Season, ReverseShip_YYYYWK, DSeq)
SELECT        LTRIM(RTRIM(vwDailyUpdDailyReverseShipSlct_Trans.ItemTransBP)) AS Trans#, LTRIM(RTRIM(vwDailyUpdDailyReverseShipSlct_Trans.OhId)) AS Order#, LTRIM(RTRIM(vwDailyUpdDailyReverseShipSlct_Trans.SkuId)) 
                         AS INV10, LEFT(vwDailyUpdDailyReverseShipSlct_Trans.SkuId, 7) AS INV7, vwDailyUpdDailyReverseShipSlct_Trans.Cdatedt AS ReverseShip_Date, vwDailyUpdDailyReverseShipSlct_Trans.STATUS AS Status, 
                         vwDailyUpdDailyReverseShipSlct_Trans.ItemCatId AS Line_Catalog, vwDailyUpdDailyReverseShipSlct_Trans.Net$ AS ReverseShip_Net$, vwDailyUpdDailyReverseShipSlct_Trans.Gross$ AS ReverseShip_Gross$, 
                         vwDailyUpdDailyReverseShipSlct_Trans.TransQQ * RefTbl_OPCSProdSku.Cost AS ReverseShip_Cost$, vwDailyUpdDailyReverseShipSlct_Trans.TransQQ AS ReverseShip_Units, 
                         vwDailyUpdDailyReverseShipSlct_Trans.CustRsnCd AS ReverseShip_RsnCd, vwDailyUpdDailyReverseShipSlct_Trans.[Rsn Desc] AS ReverseShip_RsnDesc, 
                         vwDailyUpdDailyReverseShipSlct_Trans.FiscalWk AS ReverseShip_Fiscal_Wk, vwDailyUpdDailyReverseShipSlct_Trans.MonthNo AS ReverseShip_Fiscal_Month#, 
                         vwDailyUpdDailyReverseShipSlct_Trans.MonthDesc AS ReverseShip_Fiscal_Month, vwDailyUpdDailyReverseShipSlct_Trans.Qtr AS ReverseShip_Fiscal_Qtr, 
                         vwDailyUpdDailyReverseShipSlct_Trans.Year AS ReverseShip_Fiscal_Year, vwDailyUpdDailyReverseShipSlct_Trans.[Season of Year] AS ReverseShip_Season, 
                         vwDailyUpdDailyReverseShipSlct_Trans.YYYYWK AS ReverseShip_YYYYWK, vwDailyUpdDailyReverseShipSlct_Trans.DSeq
FROM            RefTbl_OPCSProdSku RIGHT OUTER JOIN
                         vwDailyUpdDailyReverseShipSlct_Trans ON RefTbl_OPCSProdSku.INV = vwDailyUpdDailyReverseShipSlct_Trans.SkuId
WHERE        (vwDailyUpdDailyReverseShipSlct_Trans.Type = 'RS')

END
GO
