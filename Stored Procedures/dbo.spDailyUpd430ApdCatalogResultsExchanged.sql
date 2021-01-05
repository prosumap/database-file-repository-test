SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 1/18/2020
-- From DB_OPCS.accdb
-- To replace qMkTbl_CatalogResultsExchanged and qAppMkTbl_CatalogResultsNet_Exchanged
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd430ApdCatalogResultsExchanged] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

--qMkTbl_CatalogResultsExchanged
INSERT INTO MkTbl_CatalogResultsExchanged
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Exch_Units, Exch_Cost$, Exch_Net$, Exch_Gross$, Exch_Fiscal_Month#, Exch_Fiscal_Year)
SELECT        vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, MkTbl_DailyExch.Status, MkTbl_DailyExch.Line_Catalog AS Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], SUM(MkTbl_DailyExch.Exch_Units) AS Exch_Units, 
                         SUM(MkTbl_DailyExch.Exch_Cost$) AS Exch_Cost$, SUM(MkTbl_DailyExch.Exch_Net$) AS Exch_Net$, SUM(MkTbl_DailyExch.Exch_Gross$) AS Exch_Gross$, MkTbl_DailyExch.Exch_Fiscal_Month#, 
                         MkTbl_DailyExch.Exch_Fiscal_Year
FROM            vwDailyUpdSlct_AdhocResults_1 INNER JOIN
                         MkTbl_DailyExch ON vwDailyUpdSlct_AdhocResults_1.INV10 = MkTbl_DailyExch.INV10
GROUP BY vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, MkTbl_DailyExch.Status, MkTbl_DailyExch.Line_Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], MkTbl_DailyExch.Exch_Fiscal_Month#, MkTbl_DailyExch.Exch_Fiscal_Year

--qAppMkTbl_CatalogResultsNet_Exchanged
INSERT INTO MkTbl_CatalogResultsNet
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Units, Cost$, Net$, Gross$, Fiscal_Month#, Fiscal_Year, Type)
SELECT        Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Exch_Units, Exch_Cost$, Exch_Net$, Exch_Gross$, Exch_Fiscal_Month#, Exch_Fiscal_Year, 'Exchange' AS Type
FROM            MkTbl_CatalogResultsExchanged



END
GO
