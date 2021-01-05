SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 1/18/2020
-- From DB_OPCS.accdb
-- To replace qMkTbl_CatalogResultsReturned and qAppMkTbl_CatalogResultsNet_Returned
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd420ApdCatalogResultsReturned] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

--qMkTbl_CatalogResultsReturned
INSERT INTO MkTbl_CatalogResultsReturned
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Rtn_Units, Rtn_Cost$, Rtn_Net$, Rtn_Gross$, Rtn_Fiscal_Month#, Rtn_Fiscal_Year)
SELECT        vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, MkTbl_DailyRtn.Status, MkTbl_DailyRtn.Line_Catalog AS Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], SUM(MkTbl_DailyRtn.Rtn_Units) AS Rtn_Units, 
                         SUM(MkTbl_DailyRtn.Rtn_Cost$) AS Rtn_Cost$, SUM(MkTbl_DailyRtn.Rtn_Net$) AS Rtn_Net$, SUM(MkTbl_DailyRtn.Rtn_Gross$) AS Rtn_Gross$, MkTbl_DailyRtn.Rtn_Fiscal_Month#, MkTbl_DailyRtn.Rtn_Fiscal_Year
FROM            vwDailyUpdSlct_AdhocResults_1 INNER JOIN
                         MkTbl_DailyRtn ON vwDailyUpdSlct_AdhocResults_1.INV10 = MkTbl_DailyRtn.INV10
GROUP BY vwDailyUpdSlct_AdhocResults_1.Department, vwDailyUpdSlct_AdhocResults_1.Class, vwDailyUpdSlct_AdhocResults_1.Style, vwDailyUpdSlct_AdhocResults_1.INV5, vwDailyUpdSlct_AdhocResults_1.Color, 
                         vwDailyUpdSlct_AdhocResults_1.INV7, MkTbl_DailyRtn.Status, MkTbl_DailyRtn.Line_Catalog, vwDailyUpdSlct_AdhocResults_1.[Last Catalog], MkTbl_DailyRtn.Rtn_Fiscal_Month#, MkTbl_DailyRtn.Rtn_Fiscal_Year

--qAppMkTbl_CatalogResultsNet_Returned
INSERT INTO MkTbl_CatalogResultsNet
                         (Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Units, Cost$, Net$, Gross$, Fiscal_Month#, Fiscal_Year, Type)
SELECT        Department, Class, Style, INV5, Color, INV7, Status, Catalog, [Last Catalog], Rtn_Units AS Units, Rtn_Cost$ AS Cost$, Rtn_Net$ AS Net$, Rtn_Gross$ AS Gross$, Rtn_Fiscal_Month#, Rtn_Fiscal_Year, 'Return' AS Type
FROM            MkTbl_CatalogResultsReturned


END
GO
