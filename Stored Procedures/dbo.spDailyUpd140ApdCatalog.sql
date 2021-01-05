SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 4/18/2020
-- Description:	Part of Daily Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd140ApdCatalog] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
INSERT INTO RefTbl_Catalog
                         (DIVISION_ID, OFFER_ID, DESCRIPTION, MACRO_CIRCULATION, MACRO_ORDERS, MACRO_UNITS, MACRO_REVENUE, [GO LIVE FISCAL WEEK], [GO LIVE FISCAL YEAR], ANTICIPATED_DROP_DATE, 
                         ANTICIPATED_PERIOD_1_DATE, PAGES, PERCENT_COMPLETE, OFFER_COST, [PRICE STATUS], ANTICIPATED_END_DATE, [ANTICIPATED END FISCAL WEEK], [ANTICIPATED END FISCAL YEAR])
SELECT        vwDailyUpdRefTbl_Catalog.DIVISION_ID, vwDailyUpdRefTbl_Catalog.OFFER_ID, RTRIM(LTRIM(vwDailyUpdRefTbl_Catalog.DESCRIPTION)) AS Descrip, vwDailyUpdRefTbl_Catalog.MACRO_CIRCULATION, 
                         vwDailyUpdRefTbl_Catalog.MACRO_ORDERS, vwDailyUpdRefTbl_Catalog.MACRO_UNITS, vwDailyUpdRefTbl_Catalog.MACRO_REVENUE, vwDailyUpdRefTbl_Catalog.[GO LIVE FISCAL WEEK], 
                         vwDailyUpdRefTbl_Catalog.[GO LIVE FISCAL YEAR], vwDailyUpdRefTbl_Catalog.ANTICIPATED_DROP_DATE, vwDailyUpdRefTbl_Catalog.ANTICIPATED_PERIOD_1_DATE, vwDailyUpdRefTbl_Catalog.PAGES, 
                         vwDailyUpdRefTbl_Catalog.PERCENT_COMPLETE, vwDailyUpdRefTbl_Catalog.OFFER_COST, vwDailyUpdRefTbl_Catalog.[PRICE STATUS], vwDailyUpdRefTbl_Catalog.ANTICIPATED_END_DATE, 
                         RefTbl_Calendar.FiscalWk AS [ANTICIPATED END FISCAL WEEK], RefTbl_Calendar.Year AS [ANTICIPATED END FISCAL YEAR]
FROM            vwDailyUpdRefTbl_Catalog LEFT OUTER JOIN
                         RefTbl_Calendar ON vwDailyUpdRefTbl_Catalog.ANTICIPATED_END_DATE = RefTbl_Calendar.Date


    -- Insert statements for procedure here

END
GO
