SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 1/18/2020
-- From DB_OPCS.accdb
-- To replace qMkTbl_CatalogResultsShipped and qAppMkTbl_CatalogResultsNet_Shipped
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd410ApdCatalogResultsShipped] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

--qMkTbl_CatalogResultsShipped
INSERT INTO MkTbl_CatalogResultsShipped
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Ship_Units, Ship_Cost$, Ship_Net$, Ship_Gross$, Ship_Fiscal_Year, Ship_Fiscal_Month#)
SELECT        vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, MkTbl_DailyShip.Status, MkTbl_DailyShip.Line_Catalog AS Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], SUM(MkTbl_DailyShip.Ship_Units) AS Ship_Units, 
                         SUM(MkTbl_DailyShip.Ship_Cost$) AS Ship_Cost$, SUM(MkTbl_DailyShip.Ship_Net$) AS Ship_Net$, SUM(MkTbl_DailyShip.Ship_Gross$) AS Ship_Gross$, MkTbl_DailyShip.Ship_Fiscal_Year, 
                         MkTbl_DailyShip.Ship_Fiscal_Month#
FROM            MkTbl_DailyShip INNER JOIN
                         vwDailyUpdSlct_AdhocResults_1 ON MkTbl_DailyShip.INV10 = vwDailyUpdSlct_AdhocResults_1.INV10
GROUP BY vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, MkTbl_DailyShip.Status, MkTbl_DailyShip.Line_Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], MkTbl_DailyShip.Ship_Fiscal_Year, MkTbl_DailyShip.Ship_Fiscal_Month#

--qAppMkTbl_CatalogResultsNet_Shipped
INSERT INTO MkTbl_CatalogResultsNet
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Units, Cost$, Net$, Gross$, Fiscal_Year, Fiscal_Month#, Type)
SELECT        Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Ship_Units, Ship_Cost$, Ship_Net$, Ship_Gross$, Ship_Fiscal_Year, Ship_Fiscal_Month#, 'Shipped' AS Type
FROM            MkTbl_CatalogResultsShipped



END
GO
