SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 12/21/19
-- From DB_OPCS.accdb
-- To replace qMkTbl_ClassPerformanceDetail
-- Description:	Part of Weekly Update routine.
-- =============================================
create PROCEDURE [dbo].[spDailyUpd380ApdClassPerformanceDetail] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_ClassPerformanceDetail
                         (Status, Catalog, Date, Department, Class, Style, INV5, Color, INV7, Size, INV10, Dmnd_Units, Dmnd_Cost$, Dmnd_Net$, Dmnd_Gross$, Ord_Fiscal_Wk, Ord_Fiscal_Month#, Ord_Fiscal_Month, Ord_Fiscal_Qtr, Ord_Fiscal_Year, 
                         Ord_Season, Ord_YYYYWK)
SELECT        vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Line_Catalog AS Catalog, vwDailyUpdSlct_DailyOrder.Item_Date AS Date, MkTbl_SKUMaster.CAT_DESCRIPTION AS Department, 
                         MkTbl_SKUMaster.SUBCAT_DESCRIPTION AS Class, MkTbl_SKUMaster.[STYLE DESCRIPTION] AS Style, LTRIM(RTRIM(vwDailyUpdSlct_DailyOrder.INV5)) AS INV5, MkTbl_SKUMaster.[COLOR DESCRIPTION] AS Color, 
                         vwDailyUpdSlct_DailyOrder.INV7, MkTbl_SKUMaster.[SIZE DESCRIPTION] AS Size, vwDailyUpdSlct_DailyOrder.INV10, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Units) AS Dmnd_Units, 
                         SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Cost$) AS Dmnd_Cost$, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Net$) AS Dmnd_Net$, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Gross$) AS Dmnd_Gross$, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Wk, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month#, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Qtr, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Season, vwDailyUpdSlct_DailyOrder.Ord_YYYYWK
FROM            vwDailyUpdSlct_DailyOrder INNER JOIN
                         MkTbl_SKUMaster ON vwDailyUpdSlct_DailyOrder.INV10 = MkTbl_SKUMaster.Sku AND vwDailyUpdSlct_DailyOrder.Line_Catalog = MkTbl_SKUMaster.OFFER_ID
GROUP BY vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Line_Catalog, vwDailyUpdSlct_DailyOrder.Item_Date, MkTbl_SKUMaster.CAT_DESCRIPTION, MkTbl_SKUMaster.SUBCAT_DESCRIPTION, 
                         MkTbl_SKUMaster.[STYLE DESCRIPTION], LTRIM(RTRIM(vwDailyUpdSlct_DailyOrder.INV5)), MkTbl_SKUMaster.[COLOR DESCRIPTION], vwDailyUpdSlct_DailyOrder.INV7, MkTbl_SKUMaster.[SIZE DESCRIPTION], 
                         vwDailyUpdSlct_DailyOrder.INV10, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Wk, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month#, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Qtr, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Season, vwDailyUpdSlct_DailyOrder.Ord_YYYYWK

END
GO
