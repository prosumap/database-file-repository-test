SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 1/18/2020
-- From DB_OPCS.accdb
-- To replace qMkTbl_CatalogResultsNet
-- Description:	Part of Weekly Update routine.
-- =============================================
create PROCEDURE [dbo].[spDailyUpd400ApdCatalogResultsNet] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_CatalogResultsNet
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Units, Cost$, Net$, Gross$, Fiscal_Year, Fiscal_Month#, Type)
SELECT        vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Line_Catalog AS Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Units) 
                         AS Units, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Cost$) AS Cost$, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Net$) AS Net$, SUM(vwDailyUpdSlct_DailyOrder.Dmnd_Gross$) AS Gross$, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year AS Fiscal_Year, vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month# AS Fiscal_Month#, 'Order' AS Type
FROM            vwDailyUpdSlct_DailyOrder RIGHT OUTER JOIN
                         vwDailyUpdSlct_AdhocResults_1 ON vwDailyUpdSlct_DailyOrder.INV10 = vwDailyUpdSlct_AdhocResults_1.INV10
GROUP BY vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, vwDailyUpdSlct_DailyOrder.Status, vwDailyUpdSlct_DailyOrder.Line_Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Year, 
                         vwDailyUpdSlct_DailyOrder.Ord_Fiscal_Month#
END
GO
