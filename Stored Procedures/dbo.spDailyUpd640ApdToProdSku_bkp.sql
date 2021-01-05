SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Tomas Luna
-- Create date: 5/17/2020
-- Description:	Part of Weekly Update 9 routine.
-- From: DB_Reporting
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd640ApdToProdSku_bkp] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Print 'Started procedure at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_01
TRUNCATE TABLE qSlct_ProdSku_01
INSERT INTO qSlct_ProdSku_01
                         (OFFER_ID, CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], INV5, INV7, Sku, Vendor, [Vendor Style #], COST_EA, [Return Rate], INET_Catalog, INET_Price, 
                         INET_OriginalPrice, INET_Status, [OH UNITS], [OO U], [Req U], [NDC DATE], [PO # STATUS], PO, REQ, [APPR DATE])
SELECT        ExpMkTbl_ProdSku.OFFER_ID, ExpMkTbl_ProdSku.CAT_DESCRIPTION, ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, ExpMkTbl_ProdSku.[STYLE DESCRIPTION], ExpMkTbl_ProdSku.[COLOR DESCRIPTION], 
                         ExpMkTbl_ProdSku.[SIZE DESCRIPTION], ExpMkTbl_ProdSku.INV5, ExpMkTbl_ProdSku.INV7, ExpMkTbl_ProdSku.Sku, ExpMkTbl_ProdSku.[Vendor #] + ' - ' + ExpMkTbl_ProdSku.[Vendor Name] AS Vendor, 
                         ExpMkTbl_ProdSku.[Vendor Style] AS [Vendor Style #], ExpMkTbl_ProdSku.COST_EA, RefTbl_F21Hierarchy.[Return Rate], ExpMkTbl_ProdSku.INET_Catalog, ExpMkTbl_ProdSku.INET_Price, 
                         ExpMkTbl_ProdSku.INET_OriginalPrice, ExpMkTbl_ProdSku.INET_Status, ExpMkTbl_ProdSku.[OH UNITS], CASE WHEN [po status] = 'Open' THEN [OO UNITS] ELSE 0 END AS [OO U], 
                         CASE WHEN [po status] = 'Held Req' THEN [OO Units] WHEN [po status] = 'Draft' THEN [OO Units] ELSE 0 END AS [Req U], 
                         CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [NDC] END AS [NDC DATE], 
                         CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [PO Status] END AS [PO # STATUS], 
                         CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [PO #] END AS PO, CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [Req #] END AS REQ, 
                         CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [Approved Date] END AS [APPR DATE]
FROM            RefTbl_F21Hierarchy RIGHT OUTER JOIN
                         ExpMkTbl_ProdSku ON RefTbl_F21Hierarchy.Class = ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION
GROUP BY ExpMkTbl_ProdSku.OFFER_ID, ExpMkTbl_ProdSku.CAT_DESCRIPTION, ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, ExpMkTbl_ProdSku.[STYLE DESCRIPTION], ExpMkTbl_ProdSku.[COLOR DESCRIPTION], 
                         ExpMkTbl_ProdSku.[SIZE DESCRIPTION], ExpMkTbl_ProdSku.INV5, ExpMkTbl_ProdSku.INV7, ExpMkTbl_ProdSku.Sku, ExpMkTbl_ProdSku.[Vendor #] + ' - ' + ExpMkTbl_ProdSku.[Vendor Name], 
                         ExpMkTbl_ProdSku.[Vendor Style], ExpMkTbl_ProdSku.COST_EA, RefTbl_F21Hierarchy.[Return Rate], ExpMkTbl_ProdSku.INET_Catalog, ExpMkTbl_ProdSku.INET_Price, ExpMkTbl_ProdSku.INET_OriginalPrice, 
                         ExpMkTbl_ProdSku.INET_Status, ExpMkTbl_ProdSku.[OH UNITS], CASE WHEN [po status] = 'Open' THEN [OO UNITS] ELSE 0 END, 
                         CASE WHEN [po status] = 'Held Req' THEN [OO Units] WHEN [po status] = 'Draft' THEN [OO Units] ELSE 0 END, CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [NDC] END, 
                         CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [PO Status] END, CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [PO #] END, 
                         CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [Req #] END, CASE WHEN [po status] = 'Cancelled' THEN '' WHEN [po status] = 'Received' THEN '' ELSE [Approved Date] END
Print 'Finished appending to qSlct_ProdSku_01 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qApp_qSlct_ProdSku_01
INSERT INTO qSlct_ProdSku_01
                         (OFFER_ID, CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], INV5, [COLOR DESCRIPTION], INV7, [SIZE DESCRIPTION], Sku, [Return Rate], COST_EA)
SELECT        [Catalog #], Department, Class, RTRIM(LTRIM(dbo.fProperCase(Style, NULL, 3))) AS Expr2, INV5, Color, INV7, Size, INV7 AS Expr1, [Return Rate], COST_EA
FROM            MkTbl_Placeholder
Print 'Finished updating qSlct_ProdSku_01 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_02
TRUNCATE TABLE qSlct_ProdSku_02
INSERT INTO qSlct_ProdSku_02
                         ([Event #], [Event Description], Event, [Event Year], [Event Go Live], [Event End Date], [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR], Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, 
                         [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], Cost, [Current Event #], [Current Event], [Current Event Go Live], [Current Event End Date], [Current Status], [OH Units], [OO Units], [Requested OO Units], 
                         [Current Event Target ST%], [Current Event Start Fiscal Week], [Current Event Start Fiscal Year])
SELECT        qSlct_ProdSku_01.OFFER_ID AS [Event #], vwDailyUpdRefTbl_Catalog_DB_Reporting.DESCRIPTION AS [Event Description], vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT GROUP] AS Event, 
                         vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT YEAR] AS [Event Year], vwDailyUpdRefTbl_Catalog_DB_Reporting.ANTICIPATED_DROP_DATE AS [Event Go Live], 
                         vwDailyUpdRefTbl_Catalog_DB_Reporting.[TARGET END DATE] AS [Event End Date], vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL WEEK], 
                         vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL YEAR], 
                         CASE WHEN [cat_description] = 'non-Apparel' THEN [cat_description] WHEN [cat_description] = 'Swim' THEN [cat_description] WHEN [cat_description] = 'Home + Gift' THEN [cat_description] ELSE 'Apparel' END AS Division, 
                         qSlct_ProdSku_01.CAT_DESCRIPTION AS Department, qSlct_ProdSku_01.SUBCAT_DESCRIPTION AS Class, qSlct_ProdSku_01.[STYLE DESCRIPTION] AS Style, qSlct_ProdSku_01.[COLOR DESCRIPTION] AS Color, 
                         qSlct_ProdSku_01.[SIZE DESCRIPTION] AS Size, qSlct_ProdSku_01.INV5, qSlct_ProdSku_01.INV7, qSlct_ProdSku_01.Sku AS INV10, qSlct_ProdSku_01.[Return Rate], qSlct_ProdSku_01.Vendor, 
                         qSlct_ProdSku_01.[Vendor Style #], qSlct_ProdSku_01.INET_OriginalPrice AS [Original Price], qSlct_ProdSku_01.INET_Price AS [Current Price], qSlct_ProdSku_01.COST_EA AS Cost, 
                         qSlct_ProdSku_01.INET_Catalog AS [Current Event #], '' AS [Current Event], '' AS [Current Event Go Live], '' AS [Current Event End Date], 
                         CASE WHEN [INET_Status] = 'Active' THEN '1 - Active' WHEN [INET_Status] = 'Hold' THEN '2 - Hold' ELSE '3- Delete' END AS [Current Status], qSlct_ProdSku_01.[OH UNITS] AS [OH Units], SUM(qSlct_ProdSku_01.[OO U]) 
                         AS [OO Units], SUM(qSlct_ProdSku_01.[Req U]) AS [Requested OO Units], 0 AS [Current Event Target ST%], '' AS [Current Event Start Fiscal Week], '' AS [Current Event Start Fiscal Year]
FROM            qSlct_ProdSku_01 LEFT OUTER JOIN
                         vwDailyUpdRefTbl_Catalog_DB_Reporting ON qSlct_ProdSku_01.OFFER_ID = vwDailyUpdRefTbl_Catalog_DB_Reporting.OFFER_ID
GROUP BY qSlct_ProdSku_01.OFFER_ID, vwDailyUpdRefTbl_Catalog_DB_Reporting.DESCRIPTION, vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT GROUP], vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT YEAR], 
                         vwDailyUpdRefTbl_Catalog_DB_Reporting.ANTICIPATED_DROP_DATE, vwDailyUpdRefTbl_Catalog_DB_Reporting.[TARGET END DATE], vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL WEEK], 
                         vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_01.CAT_DESCRIPTION, qSlct_ProdSku_01.SUBCAT_DESCRIPTION, qSlct_ProdSku_01.[STYLE DESCRIPTION], 
                         qSlct_ProdSku_01.[COLOR DESCRIPTION], qSlct_ProdSku_01.[SIZE DESCRIPTION], qSlct_ProdSku_01.INV5, qSlct_ProdSku_01.INV7, qSlct_ProdSku_01.Sku, qSlct_ProdSku_01.[Return Rate], qSlct_ProdSku_01.Vendor, 
                         qSlct_ProdSku_01.[Vendor Style #], qSlct_ProdSku_01.INET_OriginalPrice, qSlct_ProdSku_01.INET_Price, qSlct_ProdSku_01.COST_EA, qSlct_ProdSku_01.INET_Catalog, 
                         CASE WHEN [INET_Status] = 'Active' THEN '1 - Active' WHEN [INET_Status] = 'Hold' THEN '2 - Hold' ELSE '3- Delete' END, qSlct_ProdSku_01.[OH UNITS], 
                         CASE WHEN [cat_description] = 'non-Apparel' THEN [cat_description] WHEN [cat_description] = 'Swim' THEN [cat_description] WHEN [cat_description] = 'Home + Gift' THEN [cat_description] ELSE 'Apparel' END
Print 'Finished appending to qSlct_ProdSku_02 at ' + CONVERT(varchar(10),  getdate(), 24)

UPDATE       qSlct_ProdSku_02
SET                Department = dbo.fProperCase(Department, NULL, 3), Class = dbo.fProperCase(Class, NULL, 3), Style = dbo.fProperCase(Style, NULL, 3), Color = dbo.fProperCase(Color, NULL, 3), Size = dbo.fProperCase(Size, NULL, 3)
Print 'Finished updating to qSlct_ProdSku_02 at ' + CONVERT(varchar(10),  getdate(), 24)

--  Replaces qUpd_ProdSku_02
UPDATE       qSlct_ProdSku_02
SET                [Current Event] = vwDailyUpdRefTbl_Catalog_DB_Reporting.DESCRIPTION, [Current Event Go Live] = vwDailyUpdRefTbl_Catalog_DB_Reporting.ANTICIPATED_DROP_DATE, 
                         [Current Event End Date] = vwDailyUpdRefTbl_Catalog_DB_Reporting.ANTICIPATED_END_DATE, [Current Event Target ST%] = ROUND(vwDailyUpdRefTbl_Catalog_DB_Reporting.[TARGET ST%], 0), 
                         [Current Event Start Fiscal Week] = vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL WEEK], [Current Event Start Fiscal Year] = vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL YEAR]
FROM            qSlct_ProdSku_02 INNER JOIN
                         vwDailyUpdRefTbl_Catalog_DB_Reporting ON qSlct_ProdSku_02.[Current Event #] = vwDailyUpdRefTbl_Catalog_DB_Reporting.OFFER_ID
Print 'Finished updating qSlct_ProdSku_02 at ' + CONVERT(varchar(10),  getdate(), 24)

--  Replaces qMktbl_qSlct_ProdSku_03
TRUNCATE TABLE qSlct_ProdSku_03
INSERT INTO qSlct_ProdSku_03
                         ([Event #], [Event Description], [Event Go Live], [Event End Date], Event, [Event Year], Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Return Rate], Vendor, [Vendor Style #], Cost, [Original Price], 
                         [Current Price], [Current Event #], [Current Event], [Current Event Go Live], [Current Event End Date], [Current Status], [OH Units], [OO Units], [Requested OO Units], [Backorder Units], [Current Event Target ST%], 
                         [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR], [Current Event Start Fiscal Week], [Current Event Start Fiscal Year])
SELECT        qSlct_ProdSku_02.[Event #], qSlct_ProdSku_02.[Event Description], qSlct_ProdSku_02.[Event Go Live], qSlct_ProdSku_02.[Event End Date], qSlct_ProdSku_02.Event, qSlct_ProdSku_02.[Event Year], 
                         CASE WHEN [division] = 'apparel' AND CHARINDEX('Travel', [Style]) > 0 THEN 'Travel' ELSE 'Non-Travel' END AS Category, qSlct_ProdSku_02.Division, qSlct_ProdSku_02.Department, qSlct_ProdSku_02.Class, 
                         qSlct_ProdSku_02.Style, qSlct_ProdSku_02.Color, qSlct_ProdSku_02.Size, qSlct_ProdSku_02.INV5, qSlct_ProdSku_02.INV7, qSlct_ProdSku_02.INV10, qSlct_ProdSku_02.[Return Rate], qSlct_ProdSku_02.Vendor, 
                         qSlct_ProdSku_02.[Vendor Style #], qSlct_ProdSku_02.Cost, qSlct_ProdSku_02.[Original Price], qSlct_ProdSku_02.[Current Price], qSlct_ProdSku_02.[Current Event #], qSlct_ProdSku_02.[Current Event], 
                         qSlct_ProdSku_02.[Current Event Go Live], qSlct_ProdSku_02.[Current Event End Date], qSlct_ProdSku_02.[Current Status], qSlct_ProdSku_02.[OH Units], qSlct_ProdSku_02.[OO Units], qSlct_ProdSku_02.[Requested OO Units], 
                         SUM(MkTbl_Backorder.[BO UNITS]) AS [Backorder Units], qSlct_ProdSku_02.[Current Event Target ST%], qSlct_ProdSku_02.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_02.[EVENT BEGIN FISCAL YEAR], 
                         qSlct_ProdSku_02.[Current Event Start Fiscal Week], qSlct_ProdSku_02.[Current Event Start Fiscal Year]
FROM            qSlct_ProdSku_02 LEFT OUTER JOIN
                         MkTbl_Backorder ON qSlct_ProdSku_02.INV10 = MkTbl_Backorder.SKU
GROUP BY qSlct_ProdSku_02.[Event #], qSlct_ProdSku_02.[Event Description], qSlct_ProdSku_02.[Event Go Live], qSlct_ProdSku_02.[Event End Date], qSlct_ProdSku_02.Event, qSlct_ProdSku_02.[Event Year], 
                         CASE WHEN [division] = 'apparel' AND CHARINDEX('Travel', [Style]) > 0 THEN 'Travel' ELSE 'Non-Travel' END, qSlct_ProdSku_02.Division, qSlct_ProdSku_02.Department, qSlct_ProdSku_02.Class, qSlct_ProdSku_02.Style, 
                         qSlct_ProdSku_02.Color, qSlct_ProdSku_02.Size, qSlct_ProdSku_02.INV5, qSlct_ProdSku_02.INV7, qSlct_ProdSku_02.INV10, qSlct_ProdSku_02.[Return Rate], qSlct_ProdSku_02.Vendor, qSlct_ProdSku_02.[Vendor Style #], 
                         qSlct_ProdSku_02.Cost, qSlct_ProdSku_02.[Original Price], qSlct_ProdSku_02.[Current Price], qSlct_ProdSku_02.[Current Event #], qSlct_ProdSku_02.[Current Event], qSlct_ProdSku_02.[Current Event Go Live], 
                         qSlct_ProdSku_02.[Current Event End Date], qSlct_ProdSku_02.[Current Status], qSlct_ProdSku_02.[OH Units], qSlct_ProdSku_02.[OO Units], qSlct_ProdSku_02.[Requested OO Units], 
                         qSlct_ProdSku_02.[Current Event Target ST%], qSlct_ProdSku_02.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_02.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_02.[Current Event Start Fiscal Week], 
                         qSlct_ProdSku_02.[Current Event Start Fiscal Year], qSlct_ProdSku_02.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_02.[EVENT BEGIN FISCAL YEAR]
Print 'Finished appending to qSlct_ProdSku_03 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_04        IT IS VEEEEEEERY SLOW!!!!!!
TRUNCATE TABLE qSlct_ProdSku_04
INSERT INTO qSlct_ProdSku_04
                         ([Event #], [Event Description], [Event Go Live], [Event End Date], Event, [Event Year], Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Return Rate], Vendor, [Vendor Style #], Cost, [Original Price], 
                         [Current Price], [Current Event #], [Current Event], [Current Event Go Live], [Current Event End Date], [Current Status], [Current Event Target ST%], [OH Units], [OO Units], [Requested OO Units], [Backorder Units], [Event OO Units], 
                         [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR], [Current Event Start Fiscal Week], [Current Event Start Fiscal Year])
SELECT        qSlct_ProdSku_03.[Event #], qSlct_ProdSku_03.[Event Description], qSlct_ProdSku_03.[Event Go Live], qSlct_ProdSku_03.[Event End Date], qSlct_ProdSku_03.Event, qSlct_ProdSku_03.[Event Year], qSlct_ProdSku_03.Category, 
                         qSlct_ProdSku_03.Division, qSlct_ProdSku_03.Department, qSlct_ProdSku_03.Class, qSlct_ProdSku_03.Style, qSlct_ProdSku_03.Color, qSlct_ProdSku_03.Size, qSlct_ProdSku_03.INV5, qSlct_ProdSku_03.INV7, 
                         qSlct_ProdSku_03.INV10, qSlct_ProdSku_03.[Return Rate], qSlct_ProdSku_03.Vendor, qSlct_ProdSku_03.[Vendor Style #], qSlct_ProdSku_03.Cost, qSlct_ProdSku_03.[Original Price], qSlct_ProdSku_03.[Current Price], 
                         qSlct_ProdSku_03.[Current Event #], qSlct_ProdSku_03.[Current Event], qSlct_ProdSku_03.[Current Event Go Live], qSlct_ProdSku_03.[Current Event End Date], qSlct_ProdSku_03.[Current Status], 
                         qSlct_ProdSku_03.[Current Event Target ST%], qSlct_ProdSku_03.[OH Units], qSlct_ProdSku_03.[OO Units], qSlct_ProdSku_03.[Requested OO Units], qSlct_ProdSku_03.[Backorder Units], 
                         CASE WHEN [MkTbl_TTLOnOrderReceived].[po #] = '''' THEN 0 ELSE [MkTbl_TTLOnOrderReceived].[OO Units] END AS [Event OO Units], qSlct_ProdSku_03.[EVENT BEGIN FISCAL WEEK], 
                         qSlct_ProdSku_03.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_03.[Current Event Start Fiscal Week], qSlct_ProdSku_03.[Current Event Start Fiscal Year]
FROM            qSlct_ProdSku_03 LEFT OUTER JOIN
                         MkTbl_TTLOnOrderReceived ON qSlct_ProdSku_03.INV10 = MkTbl_TTLOnOrderReceived.INV10 AND qSlct_ProdSku_03.[Event #] = MkTbl_TTLOnOrderReceived.CATALOG
Print 'Finished appending to qSlct_ProdSku_04 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_05
TRUNCATE TABLE qSlct_ProdSku_05
INSERT INTO qSlct_ProdSku_05
                         ([Event #], [Event Description], [Event Go Live], [Event End Date], Event, [Event Year], Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Return Rate], Vendor, [Vendor Style #], Cost, [Original Price], 
                         [Current Price], [Current Event #], [Current Event], [Current Event Go Live], [Current Event End Date], [Current Status], [Beyond Basic], [OH Units], [OO Units], [Event OO Units], [Requested OO Units], [Backorder Units], 
                         [Current Event Target ST%], [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR], [Current Event Start Fiscal Week], [Current Event Start Fiscal Year])
SELECT        qSlct_ProdSku_04.[Event #], qSlct_ProdSku_04.[Event Description], qSlct_ProdSku_04.[Event Go Live], qSlct_ProdSku_04.[Event End Date], qSlct_ProdSku_04.Event, qSlct_ProdSku_04.[Event Year], qSlct_ProdSku_04.Category, 
                         qSlct_ProdSku_04.Division, qSlct_ProdSku_04.Department, qSlct_ProdSku_04.Class, qSlct_ProdSku_04.Style, qSlct_ProdSku_04.Color, qSlct_ProdSku_04.Size, qSlct_ProdSku_04.INV5, qSlct_ProdSku_04.INV7, 
                         qSlct_ProdSku_04.INV10, qSlct_ProdSku_04.[Return Rate], qSlct_ProdSku_04.Vendor, qSlct_ProdSku_04.[Vendor Style #], qSlct_ProdSku_04.Cost, qSlct_ProdSku_04.[Original Price], qSlct_ProdSku_04.[Current Price], 
                         qSlct_ProdSku_04.[Current Event #], qSlct_ProdSku_04.[Current Event], qSlct_ProdSku_04.[Current Event Go Live], qSlct_ProdSku_04.[Current Event End Date], qSlct_ProdSku_04.[Current Status], 
                         CASE WHEN [Beyond Basic Question] = 'Yes' THEN 'Yes' ELSE 'No' END AS [Beyond Basic], qSlct_ProdSku_04.[OH Units], qSlct_ProdSku_04.[OO Units], qSlct_ProdSku_04.[Event OO Units], 
                         qSlct_ProdSku_04.[Requested OO Units], qSlct_ProdSku_04.[Backorder Units], qSlct_ProdSku_04.[Current Event Target ST%], qSlct_ProdSku_04.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_04.[EVENT BEGIN FISCAL YEAR], 
                         qSlct_ProdSku_04.[Current Event Start Fiscal Week], qSlct_ProdSku_04.[Current Event Start Fiscal Year]
FROM            qSlct_ProdSku_04 LEFT OUTER JOIN
                         vwDailyUpdSlct_BeyondBasics ON qSlct_ProdSku_04.INV10 = vwDailyUpdSlct_BeyondBasics.INV10
Print 'Finished appending to qSlct_ProdSku_05 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_06
TRUNCATE TABLE qSlct_ProdSku_06
INSERT INTO qSlct_ProdSku_06
                         ([Event #], [Event Description], [Event Go Live], [Event End Date], Event, [Event Year], Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Return Rate], Vendor, [Vendor Style #], Cost, [Original Price], 
                         [Current Price], [Current Event #], [Current Event], [Current Event Go Live], [Current Event End Date], [Current Status], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Requested OO Units], [Event OO Units], 
                         [Backorder Units], [Current Event Target ST%], [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR], [Current Event Start Fiscal Week], [Current Event Start Fiscal Year])
SELECT        qSlct_ProdSku_05.[Event #], qSlct_ProdSku_05.[Event Description], qSlct_ProdSku_05.[Event Go Live], qSlct_ProdSku_05.[Event End Date], qSlct_ProdSku_05.Event, qSlct_ProdSku_05.[Event Year], qSlct_ProdSku_05.Category, 
                         qSlct_ProdSku_05.Division, qSlct_ProdSku_05.Department, qSlct_ProdSku_05.Class, qSlct_ProdSku_05.Style, qSlct_ProdSku_05.Color, qSlct_ProdSku_05.Size, qSlct_ProdSku_05.INV5, qSlct_ProdSku_05.INV7, 
                         qSlct_ProdSku_05.INV10, qSlct_ProdSku_05.[Return Rate], qSlct_ProdSku_05.Vendor, qSlct_ProdSku_05.[Vendor Style #], qSlct_ProdSku_05.Cost, qSlct_ProdSku_05.[Original Price], qSlct_ProdSku_05.[Current Price], 
                         qSlct_ProdSku_05.[Current Event #], qSlct_ProdSku_05.[Current Event], qSlct_ProdSku_05.[Current Event Go Live], qSlct_ProdSku_05.[Current Event End Date], qSlct_ProdSku_05.[Current Status], 
                         qSlct_ProdSku_05.[Beyond Basic], CASE WHEN [Future Event Question] = 'Yes' THEN 'Yes' ELSE 'No' END AS [Future Event], qSlct_ProdSku_05.[OH Units], qSlct_ProdSku_05.[OH Units] * qSlct_ProdSku_05.Cost AS [OH Cost], 
                         qSlct_ProdSku_05.[OO Units], qSlct_ProdSku_05.[Requested OO Units], qSlct_ProdSku_05.[Event OO Units], qSlct_ProdSku_05.[Backorder Units], qSlct_ProdSku_05.[Current Event Target ST%], 
                         qSlct_ProdSku_05.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_05.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_05.[Current Event Start Fiscal Week], qSlct_ProdSku_05.[Current Event Start Fiscal Year]
FROM            qSlct_ProdSku_05 LEFT OUTER JOIN
                         vwDailyUpdSlct_FutureEvent ON qSlct_ProdSku_05.INV10 = vwDailyUpdSlct_FutureEvent.INV10
ORDER BY qSlct_ProdSku_05.[Current Status], qSlct_ProdSku_05.[Beyond Basic] DESC, [Future Event] DESC
Print 'Finished appending to qSlct_ProdSku_06 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_07
-- 200520 - Fields Beyond Basics and Future Event were grouped as First in Access.  Check this later.
TRUNCATE TABLE qSlct_ProdSku_07
INSERT INTO qSlct_ProdSku_07
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], [Event End Date], 
                         [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Requested OO Units], [Event OO Units], [Backorder Units], [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR])
SELECT        qSlct_ProdSku_06.Category, qSlct_ProdSku_06.Division, qSlct_ProdSku_06.Department, qSlct_ProdSku_06.Class, qSlct_ProdSku_06.Style, qSlct_ProdSku_06.Color, qSlct_ProdSku_06.INV5, qSlct_ProdSku_06.INV7, 
                         qSlct_ProdSku_06.[Return Rate], qSlct_ProdSku_06.Vendor, qSlct_ProdSku_06.[Vendor Style #], 
                         CASE WHEN [qSlct_ProdSku_06].[Original Price] > 0 THEN [qSlct_ProdSku_06].[Original Price] ELSE [Max_UnitPrice] END AS [Original Price], qSlct_ProdSku_06.[Current Price], qSlct_ProdSku_06.Cost, 
                         qSlct_ProdSku_06.[Current Event #], qSlct_ProdSku_06.[Event #], qSlct_ProdSku_06.[Event Description], qSlct_ProdSku_06.[Event Go Live], qSlct_ProdSku_06.[Event End Date], qSlct_ProdSku_06.[Beyond Basic], 
                         qSlct_ProdSku_06.[Future Event], qSlct_ProdSku_06.[OH Units], qSlct_ProdSku_06.[OH Cost], qSlct_ProdSku_06.[OO Units], qSlct_ProdSku_06.[Requested OO Units], SUM(qSlct_ProdSku_06.[Event OO Units]) 
                         AS [Event OO Units], qSlct_ProdSku_06.[Backorder Units], qSlct_ProdSku_06.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_06.[EVENT BEGIN FISCAL YEAR]
FROM            qSlct_ProdSku_06 LEFT OUTER JOIN
                         vwDailyUpdSlct_OriginalPrice ON qSlct_ProdSku_06.INV7 = vwDailyUpdSlct_OriginalPrice.INV7
GROUP BY qSlct_ProdSku_06.Category, qSlct_ProdSku_06.Division, qSlct_ProdSku_06.Department, qSlct_ProdSku_06.Class, qSlct_ProdSku_06.Style, qSlct_ProdSku_06.Color, qSlct_ProdSku_06.INV5, qSlct_ProdSku_06.INV7, 
                         qSlct_ProdSku_06.[Return Rate], qSlct_ProdSku_06.Vendor, qSlct_ProdSku_06.[Vendor Style #], CASE WHEN [qSlct_ProdSku_06].[Original Price] > 0 THEN [qSlct_ProdSku_06].[Original Price] ELSE [Max_UnitPrice] END, 
                         qSlct_ProdSku_06.[Current Price], qSlct_ProdSku_06.Cost, qSlct_ProdSku_06.[Current Event #], qSlct_ProdSku_06.[Event #], qSlct_ProdSku_06.[Event Description], qSlct_ProdSku_06.[Event Go Live], 
                         qSlct_ProdSku_06.[Event End Date], qSlct_ProdSku_06.[OH Units], qSlct_ProdSku_06.[OH Cost], qSlct_ProdSku_06.[OO Units], qSlct_ProdSku_06.[Requested OO Units], qSlct_ProdSku_06.[Backorder Units], 
                         qSlct_ProdSku_06.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_06.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_06.[Beyond Basic], qSlct_ProdSku_06.[Future Event]
ORDER BY qSlct_ProdSku_06.Category, qSlct_ProdSku_06.Division DESC, qSlct_ProdSku_06.Department DESC, qSlct_ProdSku_06.Class DESC, qSlct_ProdSku_06.INV7 DESC
Print 'Finished appending to qSlct_ProdSku_07 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_08
-- 200520 - Fields Beyond Basics and Future Event were grouped as First in Access.  Check this later.
TRUNCATE TABLE qSlct_ProdSku_08
INSERT INTO qSlct_ProdSku_08
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], 
                         [Event End Date], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Requested OO Units], [Event OO Units], [Backorder Units], [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR])
SELECT        Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], CASE WHEN [original price] = 0 THEN 0 ELSE ([current price] - [original price]) 
                         / [original price] END AS [Current Discount %], MAX(Cost) AS Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], [Event End Date], [Beyond Basic], [Future Event], SUM([OH Units]) AS [OH Units], SUM([OH Cost]) 
                         AS [OH Cost], SUM([OO Units]) AS [OO Units], SUM([Requested OO Units]) AS [Requested OO Units], SUM([Event OO Units]) AS [Event OO Units], SUM([Backorder Units]) AS [Backorder Units], [EVENT BEGIN FISCAL WEEK], 
                         [EVENT BEGIN FISCAL YEAR]
FROM            qSlct_ProdSku_07
GROUP BY Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], CASE WHEN [original price] = 0 THEN 0 ELSE ([current price] - [original price]) 
                         / [original price] END, [Current Event #], [Event #], [Event Description], [Event Go Live], [Event End Date], [EVENT BEGIN FISCAL WEEK], [EVENT BEGIN FISCAL YEAR], [Beyond Basic], [Future Event]
Print 'Finished appending to qSlct_ProdSku_08 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_09
TRUNCATE TABLE qSlct_ProdSku_09
INSERT INTO qSlct_ProdSku_09
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], 
                         [Event End Date], [Event Begin Fiscal Week], [Event Begin Fiscal Year], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Event OO Units], [Requested OO Units], [Backorder Units], [Event BOP U], 
                         [Event BOP Cost $])
SELECT        qSlct_ProdSku_08.Category, qSlct_ProdSku_08.Division, qSlct_ProdSku_08.Department, qSlct_ProdSku_08.Class, qSlct_ProdSku_08.Style, qSlct_ProdSku_08.Color, qSlct_ProdSku_08.INV5, qSlct_ProdSku_08.INV7, 
                         qSlct_ProdSku_08.[Return Rate], qSlct_ProdSku_08.Vendor, qSlct_ProdSku_08.[Vendor Style #], qSlct_ProdSku_08.[Original Price], qSlct_ProdSku_08.[Current Price], qSlct_ProdSku_08.[Current Discount %], 
                         qSlct_ProdSku_08.Cost, qSlct_ProdSku_08.[Current Event #], qSlct_ProdSku_08.[Event #], qSlct_ProdSku_08.[Event Description], qSlct_ProdSku_08.[Event Go Live], qSlct_ProdSku_08.[Event End Date], 
                         qSlct_ProdSku_08.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_08.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_08.[Beyond Basic], qSlct_ProdSku_08.[Future Event], qSlct_ProdSku_08.[OH Units], 
                         qSlct_ProdSku_08.[OH Cost], qSlct_ProdSku_08.[OO Units], qSlct_ProdSku_08.[Event OO Units], qSlct_ProdSku_08.[Requested OO Units], qSlct_ProdSku_08.[Backorder Units], SUM(MkTbl_WklyInventory.UNITS) 
                         AS [Event BOP U], SUM(MkTbl_WklyInventory.UNITS * MkTbl_WklyInventory.COST_EA) AS [Event BOP Cost $]
FROM            qSlct_ProdSku_08 LEFT OUTER JOIN
                         MkTbl_WklyInventory ON qSlct_ProdSku_08.[EVENT BEGIN FISCAL WEEK] = MkTbl_WklyInventory.FISCAL_WEEK AND qSlct_ProdSku_08.[EVENT BEGIN FISCAL YEAR] = MkTbl_WklyInventory.FISCAL_YEAR AND 
                         qSlct_ProdSku_08.INV7 = MkTbl_WklyInventory.INV7
GROUP BY qSlct_ProdSku_08.Category, qSlct_ProdSku_08.Division, qSlct_ProdSku_08.Department, qSlct_ProdSku_08.Class, qSlct_ProdSku_08.Style, qSlct_ProdSku_08.Color, qSlct_ProdSku_08.INV5, qSlct_ProdSku_08.INV7, 
                         qSlct_ProdSku_08.[Return Rate], qSlct_ProdSku_08.Vendor, qSlct_ProdSku_08.[Vendor Style #], qSlct_ProdSku_08.[Original Price], qSlct_ProdSku_08.[Current Price], qSlct_ProdSku_08.[Current Discount %], 
                         qSlct_ProdSku_08.Cost, qSlct_ProdSku_08.[Current Event #], qSlct_ProdSku_08.[Event #], qSlct_ProdSku_08.[Event Description], qSlct_ProdSku_08.[Event Go Live], qSlct_ProdSku_08.[Event End Date], 
                         qSlct_ProdSku_08.[EVENT BEGIN FISCAL WEEK], qSlct_ProdSku_08.[EVENT BEGIN FISCAL YEAR], qSlct_ProdSku_08.[Beyond Basic], qSlct_ProdSku_08.[Future Event], qSlct_ProdSku_08.[OH Units], 
                         qSlct_ProdSku_08.[OH Cost], qSlct_ProdSku_08.[OO Units], qSlct_ProdSku_08.[Event OO Units], qSlct_ProdSku_08.[Requested OO Units], qSlct_ProdSku_08.[Backorder Units]
Print 'Finished appending to qSlct_ProdSku_09 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_10
-- 200520 - The Access query is still using the Access MkTbl_WklyInventoryForecast table not the one on SQL
TRUNCATE TABLE qSlct_ProdSku_10
INSERT INTO qSlct_ProdSku_10
                         (INV7, [Event #], [Event BOP Units])
SELECT        qSlct_ProdSku_09.INV7, qSlct_ProdSku_09.[Event #], SUM(MkTbl_WklyInventoryForecast.[BOP UNITS]) AS [Event BOP Units]
FROM            qSlct_ProdSku_09 INNER JOIN
                         MkTbl_WklyInventoryForecast ON qSlct_ProdSku_09.INV7 = MkTbl_WklyInventoryForecast.INV7 AND qSlct_ProdSku_09.[Event Begin Fiscal Week] = MkTbl_WklyInventoryForecast.FISCAL_WEEK AND 
                         qSlct_ProdSku_09.[Event Begin Fiscal Year] = MkTbl_WklyInventoryForecast.FISCAL_YEAR
GROUP BY qSlct_ProdSku_09.INV7, qSlct_ProdSku_09.[Event #]
Print 'Finished appending to qSlct_ProdSku_10 at ' + CONVERT(varchar(10),  getdate(), 24)


-- Replaces qUpd_ProdSku_09
UPDATE       qSlct_ProdSku_09
SET                [Event BOP U] = qSlct_ProdSku_10.[Event BOP Units]
FROM            qSlct_ProdSku_09 INNER JOIN
                         qSlct_ProdSku_10 ON qSlct_ProdSku_09.INV7 = qSlct_ProdSku_10.INV7 AND qSlct_ProdSku_09.[Event #] = qSlct_ProdSku_10.[Event #]
Print 'Finished updating to qSlct_ProdSku_09 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_11
TRUNCATE TABLE qSlct_ProdSku_11
INSERT INTO qSlct_ProdSku_11
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], 
                         [Event End Date], [Event Begin Fiscal Week], [Event Begin Fiscal Year], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Event OO Units], [Requested OO Units], [Backorder Units], [Event BOP U], 
                         [Event BOP Cost $], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $])
SELECT        qSlct_ProdSku_09.Category, qSlct_ProdSku_09.Division, qSlct_ProdSku_09.Department, qSlct_ProdSku_09.Class, qSlct_ProdSku_09.Style, qSlct_ProdSku_09.Color, qSlct_ProdSku_09.INV5, qSlct_ProdSku_09.INV7, 
                         qSlct_ProdSku_09.[Return Rate], qSlct_ProdSku_09.Vendor, qSlct_ProdSku_09.[Vendor Style #], qSlct_ProdSku_09.[Original Price], qSlct_ProdSku_09.[Current Price], qSlct_ProdSku_09.[Current Discount %], 
                         qSlct_ProdSku_09.Cost, qSlct_ProdSku_09.[Current Event #], qSlct_ProdSku_09.[Event #], qSlct_ProdSku_09.[Event Description], qSlct_ProdSku_09.[Event Go Live], qSlct_ProdSku_09.[Event End Date], 
                         qSlct_ProdSku_09.[Event Begin Fiscal Week], qSlct_ProdSku_09.[Event Begin Fiscal Year], qSlct_ProdSku_09.[Beyond Basic], qSlct_ProdSku_09.[Future Event], qSlct_ProdSku_09.[OH Units], qSlct_ProdSku_09.[OH Cost], 
                         qSlct_ProdSku_09.[OO Units], qSlct_ProdSku_09.[Event OO Units], qSlct_ProdSku_09.[Requested OO Units], qSlct_ProdSku_09.[Backorder Units], qSlct_ProdSku_09.[Event BOP U], qSlct_ProdSku_09.[Event BOP Cost $], 
                         SUM(vwDailyUpdSlct_CatalogResultsNet_Orders.Units) AS [Actual Demand Units], SUM(vwDailyUpdSlct_CatalogResultsNet_Orders.Cost$) AS [Actual Demand Cost $], SUM(vwDailyUpdSlct_CatalogResultsNet_Orders.Net$) 
                         AS [Actual Demand $], SUM(vwDailyUpdSlct_CatalogResultsNet_Orders.Gross$) AS [Actual Gross Demand $]
FROM            qSlct_ProdSku_09 LEFT OUTER JOIN
                         vwDailyUpdSlct_CatalogResultsNet_Orders ON qSlct_ProdSku_09.INV7 = vwDailyUpdSlct_CatalogResultsNet_Orders.INV7 AND qSlct_ProdSku_09.[Event #] = vwDailyUpdSlct_CatalogResultsNet_Orders.Catalog
GROUP BY qSlct_ProdSku_09.Category, qSlct_ProdSku_09.Division, qSlct_ProdSku_09.Department, qSlct_ProdSku_09.Class, qSlct_ProdSku_09.Style, qSlct_ProdSku_09.Color, qSlct_ProdSku_09.INV5, qSlct_ProdSku_09.INV7, 
                         qSlct_ProdSku_09.[Return Rate], qSlct_ProdSku_09.Vendor, qSlct_ProdSku_09.[Vendor Style #], qSlct_ProdSku_09.[Original Price], qSlct_ProdSku_09.[Current Price], qSlct_ProdSku_09.[Current Discount %], 
                         qSlct_ProdSku_09.Cost, qSlct_ProdSku_09.[Current Event #], qSlct_ProdSku_09.[Event #], qSlct_ProdSku_09.[Event Description], qSlct_ProdSku_09.[Event Go Live], qSlct_ProdSku_09.[Event End Date], 
                         qSlct_ProdSku_09.[Event Begin Fiscal Week], qSlct_ProdSku_09.[Event Begin Fiscal Year], qSlct_ProdSku_09.[Beyond Basic], qSlct_ProdSku_09.[Future Event], qSlct_ProdSku_09.[OH Units], qSlct_ProdSku_09.[OH Cost], 
                         qSlct_ProdSku_09.[OO Units], qSlct_ProdSku_09.[Event OO Units], qSlct_ProdSku_09.[Requested OO Units], qSlct_ProdSku_09.[Backorder Units], qSlct_ProdSku_09.[Event BOP U], qSlct_ProdSku_09.[Event BOP Cost $]
Print 'Finished appending to qSlct_ProdSku_11 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_12
TRUNCATE TABLE qSlct_ProdSku_12
INSERT INTO qSlct_ProdSku_12
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], 
                         [Event End Date], [Event Begin Fiscal Week], [Event Begin Fiscal Year], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Event OO Units], [Requested OO Units], [Backorder Units], [Event BOP U], 
                         [Event BOP Cost $], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $], [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units])
SELECT        qSlct_ProdSku_11.Category, qSlct_ProdSku_11.Division, qSlct_ProdSku_11.Department, qSlct_ProdSku_11.Class, qSlct_ProdSku_11.Style, qSlct_ProdSku_11.Color, qSlct_ProdSku_11.INV5, qSlct_ProdSku_11.INV7, 
                         qSlct_ProdSku_11.[Return Rate], qSlct_ProdSku_11.Vendor, qSlct_ProdSku_11.[Vendor Style #], qSlct_ProdSku_11.[Original Price], qSlct_ProdSku_11.[Current Price], qSlct_ProdSku_11.[Current Discount %], 
                         qSlct_ProdSku_11.Cost, qSlct_ProdSku_11.[Current Event #], qSlct_ProdSku_11.[Event #], qSlct_ProdSku_11.[Event Description], qSlct_ProdSku_11.[Event Go Live], qSlct_ProdSku_11.[Event End Date], 
                         qSlct_ProdSku_11.[Event Begin Fiscal Week], qSlct_ProdSku_11.[Event Begin Fiscal Year], qSlct_ProdSku_11.[Beyond Basic], qSlct_ProdSku_11.[Future Event], qSlct_ProdSku_11.[OH Units], qSlct_ProdSku_11.[OH Cost], 
                         qSlct_ProdSku_11.[OO Units], qSlct_ProdSku_11.[Event OO Units], qSlct_ProdSku_11.[Requested OO Units], qSlct_ProdSku_11.[Backorder Units], qSlct_ProdSku_11.[Event BOP U], qSlct_ProdSku_11.[Event BOP Cost $], 
                         qSlct_ProdSku_11.[Actual Demand Units], qSlct_ProdSku_11.[Actual Demand Cost $], qSlct_ProdSku_11.[Actual Demand $], qSlct_ProdSku_11.[Actual Gross Demand $], SUM(MkTbl_Projection.[GROSS DEMAND]) 
                         AS [Projection Ticket Demand $], SUM(MkTbl_Projection.[DEMAND COST]) AS [Projection Demand Cost $], SUM(MkTbl_Projection.[DEMAND UNITS]) AS [Projection Demand Units]
FROM            qSlct_ProdSku_11 LEFT OUTER JOIN
                         MkTbl_Projection ON qSlct_ProdSku_11.[Event #] = MkTbl_Projection.OFFER_ID AND qSlct_ProdSku_11.INV7 = MkTbl_Projection.INV7
GROUP BY qSlct_ProdSku_11.Category, qSlct_ProdSku_11.Division, qSlct_ProdSku_11.Department, qSlct_ProdSku_11.Class, qSlct_ProdSku_11.Style, qSlct_ProdSku_11.Color, qSlct_ProdSku_11.INV5, qSlct_ProdSku_11.INV7, 
                         qSlct_ProdSku_11.[Return Rate], qSlct_ProdSku_11.Vendor, qSlct_ProdSku_11.[Vendor Style #], qSlct_ProdSku_11.[Original Price], qSlct_ProdSku_11.[Current Price], qSlct_ProdSku_11.[Current Discount %], 
                         qSlct_ProdSku_11.Cost, qSlct_ProdSku_11.[Current Event #], qSlct_ProdSku_11.[Event #], qSlct_ProdSku_11.[Event Description], qSlct_ProdSku_11.[Event Go Live], qSlct_ProdSku_11.[Event End Date], 
                         qSlct_ProdSku_11.[Event Begin Fiscal Week], qSlct_ProdSku_11.[Event Begin Fiscal Year], qSlct_ProdSku_11.[Beyond Basic], qSlct_ProdSku_11.[Future Event], qSlct_ProdSku_11.[OH Units], qSlct_ProdSku_11.[OH Cost], 
                         qSlct_ProdSku_11.[OO Units], qSlct_ProdSku_11.[Event OO Units], qSlct_ProdSku_11.[Requested OO Units], qSlct_ProdSku_11.[Backorder Units], qSlct_ProdSku_11.[Event BOP U], qSlct_ProdSku_11.[Event BOP Cost $], 
                         qSlct_ProdSku_11.[Actual Demand Units], qSlct_ProdSku_11.[Actual Demand Cost $], qSlct_ProdSku_11.[Actual Demand $], qSlct_ProdSku_11.[Actual Gross Demand $]
Print 'Finished appending to qSlct_ProdSku_12 at ' + CONVERT(varchar(10),  getdate(), 24)


-- Replaces qMktbl_qSlct_ProdSku_13
TRUNCATE TABLE qSlct_ProdSku_13
INSERT INTO qSlct_ProdSku_13
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], 
                         [Event End Date], [Event Begin Fiscal Week], [Event Begin Fiscal Year], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Requested OO Units], [Event OO Units], [Backorder Units], [Event BOP U], 
                         [Event BOP Cost $], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $], [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units], [Plan Gross Demand $], 
                         [Plan Net Demand $], [Plan Demand Cost $], [Plan Demand Units])
SELECT        qSlct_ProdSku_12.Category, qSlct_ProdSku_12.Division, qSlct_ProdSku_12.Department, qSlct_ProdSku_12.Class, qSlct_ProdSku_12.Style, qSlct_ProdSku_12.Color, qSlct_ProdSku_12.INV5, qSlct_ProdSku_12.INV7, 
                         qSlct_ProdSku_12.[Return Rate], qSlct_ProdSku_12.Vendor, qSlct_ProdSku_12.[Vendor Style #], qSlct_ProdSku_12.[Original Price], qSlct_ProdSku_12.[Current Price], qSlct_ProdSku_12.[Current Discount %], 
                         qSlct_ProdSku_12.Cost, qSlct_ProdSku_12.[Current Event #], qSlct_ProdSku_12.[Event #], qSlct_ProdSku_12.[Event Description], qSlct_ProdSku_12.[Event Go Live], qSlct_ProdSku_12.[Event End Date], 
                         qSlct_ProdSku_12.[Event Begin Fiscal Week], qSlct_ProdSku_12.[Event Begin Fiscal Year], qSlct_ProdSku_12.[Beyond Basic], qSlct_ProdSku_12.[Future Event], qSlct_ProdSku_12.[OH Units], qSlct_ProdSku_12.[OH Cost], 
                         qSlct_ProdSku_12.[OO Units], qSlct_ProdSku_12.[Requested OO Units], qSlct_ProdSku_12.[Event OO Units], qSlct_ProdSku_12.[Backorder Units], qSlct_ProdSku_12.[Event BOP U], qSlct_ProdSku_12.[Event BOP Cost $], 
                         qSlct_ProdSku_12.[Actual Demand Units], qSlct_ProdSku_12.[Actual Demand Cost $], qSlct_ProdSku_12.[Actual Demand $], qSlct_ProdSku_12.[Actual Gross Demand $], qSlct_ProdSku_12.[Projection Ticket Demand $], 
                         qSlct_ProdSku_12.[Projection Demand Cost $], qSlct_ProdSku_12.[Projection Demand Units], SUM(MkTbl_MerchPlan.[GROSS DEMAND]) AS [Plan Gross Demand $], SUM(MkTbl_MerchPlan.[NET DEMAND]) 
                         AS [Plan Net Demand $], SUM(MkTbl_MerchPlan.[DEMAND COST]) AS [Plan Demand Cost $], SUM(MkTbl_MerchPlan.[DEMAND UNITS]) AS [Plan Demand Units]
FROM            qSlct_ProdSku_12 LEFT OUTER JOIN
                         MkTbl_MerchPlan ON qSlct_ProdSku_12.INV7 = MkTbl_MerchPlan.INV7 AND qSlct_ProdSku_12.[Event #] = MkTbl_MerchPlan.OFFER_ID
GROUP BY qSlct_ProdSku_12.Category, qSlct_ProdSku_12.Division, qSlct_ProdSku_12.Department, qSlct_ProdSku_12.Class, qSlct_ProdSku_12.Style, qSlct_ProdSku_12.Color, qSlct_ProdSku_12.INV5, qSlct_ProdSku_12.INV7, 
                         qSlct_ProdSku_12.[Return Rate], qSlct_ProdSku_12.Vendor, qSlct_ProdSku_12.[Vendor Style #], qSlct_ProdSku_12.[Original Price], qSlct_ProdSku_12.[Current Price], qSlct_ProdSku_12.[Current Discount %], 
                         qSlct_ProdSku_12.Cost, qSlct_ProdSku_12.[Current Event #], qSlct_ProdSku_12.[Event #], qSlct_ProdSku_12.[Event Description], qSlct_ProdSku_12.[Event Go Live], qSlct_ProdSku_12.[Event End Date], 
                         qSlct_ProdSku_12.[Event Begin Fiscal Week], qSlct_ProdSku_12.[Event Begin Fiscal Year], qSlct_ProdSku_12.[Beyond Basic], qSlct_ProdSku_12.[Future Event], qSlct_ProdSku_12.[OH Units], qSlct_ProdSku_12.[OH Cost], 
                         qSlct_ProdSku_12.[OO Units], qSlct_ProdSku_12.[Requested OO Units], qSlct_ProdSku_12.[Event OO Units], qSlct_ProdSku_12.[Backorder Units], qSlct_ProdSku_12.[Event BOP U], qSlct_ProdSku_12.[Event BOP Cost $], 
                         qSlct_ProdSku_12.[Actual Demand Units], qSlct_ProdSku_12.[Actual Demand Cost $], qSlct_ProdSku_12.[Actual Demand $], qSlct_ProdSku_12.[Actual Gross Demand $], qSlct_ProdSku_12.[Projection Ticket Demand $], 
                         qSlct_ProdSku_12.[Projection Demand Cost $], qSlct_ProdSku_12.[Projection Demand Units]
Print 'Finished appending to qSlct_ProdSku_13 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_14
TRUNCATE TABLE qSlct_ProdSku_14
INSERT INTO qSlct_ProdSku_14
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], Cost, [Current Event #], [Event #], [Event Description], [Event Go Live], 
                         [Event End Date], [Event Begin Fiscal Week], [Event Begin Fiscal Year], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Requested OO Units], [Event OO Units], [Backorder Units], [Event BOP U], 
                         [Event BOP Cost $], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $], [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units], [Plan Gross Demand $], 
                         [Plan Net Demand $], [Plan Demand Cost $], [Plan Demand Units], [Forecast Gross Demand $], [Forecast Net Demand $], [Forecast Demand Cost $], [Forecast Demand Units])
SELECT        qSlct_ProdSku_13.Category, qSlct_ProdSku_13.Division, qSlct_ProdSku_13.Department, qSlct_ProdSku_13.Class, qSlct_ProdSku_13.Style, qSlct_ProdSku_13.Color, qSlct_ProdSku_13.INV5, qSlct_ProdSku_13.INV7, 
                         qSlct_ProdSku_13.[Return Rate], qSlct_ProdSku_13.Vendor, qSlct_ProdSku_13.[Vendor Style #], qSlct_ProdSku_13.[Original Price], qSlct_ProdSku_13.[Current Price], qSlct_ProdSku_13.[Current Discount %], 
                         qSlct_ProdSku_13.Cost, qSlct_ProdSku_13.[Current Event #], qSlct_ProdSku_13.[Event #], qSlct_ProdSku_13.[Event Description], qSlct_ProdSku_13.[Event Go Live], qSlct_ProdSku_13.[Event End Date], 
                         qSlct_ProdSku_13.[Event Begin Fiscal Week], qSlct_ProdSku_13.[Event Begin Fiscal Year], qSlct_ProdSku_13.[Beyond Basic], qSlct_ProdSku_13.[Future Event], qSlct_ProdSku_13.[OH Units], qSlct_ProdSku_13.[OH Cost], 
                         qSlct_ProdSku_13.[OO Units], qSlct_ProdSku_13.[Requested OO Units], qSlct_ProdSku_13.[Event OO Units], qSlct_ProdSku_13.[Backorder Units], qSlct_ProdSku_13.[Event BOP U], qSlct_ProdSku_13.[Event BOP Cost $], 
                         qSlct_ProdSku_13.[Actual Demand Units], qSlct_ProdSku_13.[Actual Demand Cost $], qSlct_ProdSku_13.[Actual Demand $], qSlct_ProdSku_13.[Actual Gross Demand $], qSlct_ProdSku_13.[Projection Ticket Demand $], 
                         qSlct_ProdSku_13.[Projection Demand Cost $], qSlct_ProdSku_13.[Projection Demand Units], qSlct_ProdSku_13.[Plan Gross Demand $], qSlct_ProdSku_13.[Plan Net Demand $], qSlct_ProdSku_13.[Plan Demand Cost $], 
                         qSlct_ProdSku_13.[Plan Demand Units], SUM(MkTbl_Work.[GROSS DEMAND]) AS [Forecast Gross Demand $], SUM(MkTbl_Work.[NET DEMAND]) AS [Forecast Net Demand $], SUM(MkTbl_Work.[DEMAND COST]) 
                         AS [Forecast Demand Cost $], SUM(MkTbl_Work.[DEMAND UNITS]) AS [Forecast Demand Units]
FROM            qSlct_ProdSku_13 LEFT OUTER JOIN
                         MkTbl_Work ON qSlct_ProdSku_13.INV7 = MkTbl_Work.INV7 AND qSlct_ProdSku_13.[Event #] = MkTbl_Work.OFFER_ID
GROUP BY qSlct_ProdSku_13.Category, qSlct_ProdSku_13.Division, qSlct_ProdSku_13.Department, qSlct_ProdSku_13.Class, qSlct_ProdSku_13.Style, qSlct_ProdSku_13.Color, qSlct_ProdSku_13.INV5, qSlct_ProdSku_13.INV7, 
                         qSlct_ProdSku_13.[Return Rate], qSlct_ProdSku_13.Vendor, qSlct_ProdSku_13.[Vendor Style #], qSlct_ProdSku_13.[Original Price], qSlct_ProdSku_13.[Current Price], qSlct_ProdSku_13.[Current Discount %], 
                         qSlct_ProdSku_13.Cost, qSlct_ProdSku_13.[Current Event #], qSlct_ProdSku_13.[Event #], qSlct_ProdSku_13.[Event Description], qSlct_ProdSku_13.[Event Go Live], qSlct_ProdSku_13.[Event End Date], 
                         qSlct_ProdSku_13.[Event Begin Fiscal Week], qSlct_ProdSku_13.[Event Begin Fiscal Year], qSlct_ProdSku_13.[Beyond Basic], qSlct_ProdSku_13.[Future Event], qSlct_ProdSku_13.[OH Units], qSlct_ProdSku_13.[OH Cost], 
                         qSlct_ProdSku_13.[OO Units], qSlct_ProdSku_13.[Requested OO Units], qSlct_ProdSku_13.[Event OO Units], qSlct_ProdSku_13.[Backorder Units], qSlct_ProdSku_13.[Event BOP U], qSlct_ProdSku_13.[Event BOP Cost $], 
                         qSlct_ProdSku_13.[Actual Demand Units], qSlct_ProdSku_13.[Actual Demand Cost $], qSlct_ProdSku_13.[Actual Demand $], qSlct_ProdSku_13.[Actual Gross Demand $], qSlct_ProdSku_13.[Projection Ticket Demand $], 
                         qSlct_ProdSku_13.[Projection Demand Cost $], qSlct_ProdSku_13.[Projection Demand Units], qSlct_ProdSku_13.[Plan Gross Demand $], qSlct_ProdSku_13.[Plan Net Demand $], qSlct_ProdSku_13.[Plan Demand Cost $], 
                         qSlct_ProdSku_13.[Plan Demand Units]
Print 'Finished appending to qSlct_ProdSku_14 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qUpd_Prodsku_14
-- 200520 - This query uses table Mktbl_Placeholder.  It is not clear yet how this table is populated.
UPDATE       qSlct_ProdSku_14
SET                [Forecast Gross Demand $] = MkTbl_Placeholder.[GROSS DEMAND], [Forecast Net Demand $] = MkTbl_Placeholder.[NET DEMAND], [Forecast Demand Cost $] = MkTbl_Placeholder.[DEMAND COST], 
                         [Forecast Demand Units] = MkTbl_Placeholder.[DEMAND UNITS], [Requested OO Units] = MkTbl_Placeholder.[HELD REQ U]
FROM            qSlct_ProdSku_14 INNER JOIN
                         MkTbl_Placeholder ON MkTbl_Placeholder.[Catalog #] = qSlct_ProdSku_14.[Event #] AND qSlct_ProdSku_14.INV5 = MkTbl_Placeholder.INV5
Print 'Finished updating to qSlct_ProdSku_14 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_15
-- 200521 - This query uses table MkTbl_1stProjection.  Kari said in email send today that someone will propulate it through On-Demand menu.
TRUNCATE TABLE qSlct_ProdSku_15
INSERT INTO qSlct_ProdSku_15
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Original Price], [Current Price], [Current Discount %], [Current Cost], [Current Event #], [Event #], [Event Description], 
                         [Event Go Live], [Event End Date], [Event Begin Fiscal Week], [Event Begin Fiscal Year], [Beyond Basic], [Future Event], [OH Units], [OH Cost], [OO Units], [Requested OO Units], [Event OO Units], [Backorder Units], 
                         [Event BOP U], [Event BOP Cost $], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $], [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units], 
                         [Plan Gross Demand $], [Plan Net Demand $], [Plan Demand Cost $], [Plan Demand Units], [1st Projection Offered Demand $], [1st Projection Demand Cost $], [1st Projection Demand Units], [Forecast Gross Demand $], 
                         [Forecast Net Demand $], [Forecast Demand Cost $], [Forecast Demand Units])
SELECT        qSlct_ProdSku_14.Category, qSlct_ProdSku_14.Division, qSlct_ProdSku_14.Department, qSlct_ProdSku_14.Class, qSlct_ProdSku_14.Style, qSlct_ProdSku_14.Color, qSlct_ProdSku_14.INV5, qSlct_ProdSku_14.INV7, 
                         qSlct_ProdSku_14.[Return Rate], qSlct_ProdSku_14.Vendor, qSlct_ProdSku_14.[Vendor Style #], qSlct_ProdSku_14.[Original Price], qSlct_ProdSku_14.[Current Price], qSlct_ProdSku_14.[Current Discount %], 
                         CASE WHEN [cost] > 0 THEN [Cost] WHEN isnull([oh units], 0) > 0 THEN [oh cost] / [oh units] WHEN isnull([Event BOP U], 0) > 0 THEN ([Event BOP Cost $] / [Event BOP U]) WHEN isnull([Actual Demand Units], 0) 
                         > 0 THEN [Actual Demand Cost $] / [Actual Demand Units] ELSE 0 END AS [Current Cost], qSlct_ProdSku_14.[Current Event #], qSlct_ProdSku_14.[Event #], qSlct_ProdSku_14.[Event Description], 
                         qSlct_ProdSku_14.[Event Go Live], qSlct_ProdSku_14.[Event End Date], qSlct_ProdSku_14.[Event Begin Fiscal Week], qSlct_ProdSku_14.[Event Begin Fiscal Year], qSlct_ProdSku_14.[Beyond Basic], 
                         qSlct_ProdSku_14.[Future Event], qSlct_ProdSku_14.[OH Units], qSlct_ProdSku_14.[OH Cost], qSlct_ProdSku_14.[OO Units], qSlct_ProdSku_14.[Requested OO Units], qSlct_ProdSku_14.[Event OO Units], 
                         qSlct_ProdSku_14.[Backorder Units], qSlct_ProdSku_14.[Event BOP U], qSlct_ProdSku_14.[Event BOP Cost $], qSlct_ProdSku_14.[Actual Demand Units], qSlct_ProdSku_14.[Actual Demand Cost $], 
                         qSlct_ProdSku_14.[Actual Demand $], qSlct_ProdSku_14.[Actual Gross Demand $], qSlct_ProdSku_14.[Projection Ticket Demand $], qSlct_ProdSku_14.[Projection Demand Cost $], qSlct_ProdSku_14.[Projection Demand Units], 
                         qSlct_ProdSku_14.[Plan Gross Demand $], qSlct_ProdSku_14.[Plan Net Demand $], qSlct_ProdSku_14.[Plan Demand Cost $], qSlct_ProdSku_14.[Plan Demand Units], 
                         MkTbl_1stProjection.[OFFERED DEMAND $] AS [1st Projection Offered Demand $], SUM(MkTbl_1stProjection.[DEMAND COST]) AS [1st Projection Demand Cost $], SUM(MkTbl_1stProjection.[DEMAND UNITS]) 
                         AS [1st Projection Demand Units], qSlct_ProdSku_14.[Forecast Gross Demand $], qSlct_ProdSku_14.[Forecast Net Demand $], qSlct_ProdSku_14.[Forecast Demand Cost $], qSlct_ProdSku_14.[Forecast Demand Units]
FROM            qSlct_ProdSku_14 LEFT OUTER JOIN
                         MkTbl_1stProjection ON qSlct_ProdSku_14.[Event #] = MkTbl_1stProjection.OFFER_ID AND qSlct_ProdSku_14.INV7 = MkTbl_1stProjection.INV7
GROUP BY qSlct_ProdSku_14.Category, qSlct_ProdSku_14.Division, qSlct_ProdSku_14.Department, qSlct_ProdSku_14.Class, qSlct_ProdSku_14.Style, qSlct_ProdSku_14.Color, qSlct_ProdSku_14.INV5, qSlct_ProdSku_14.INV7, 
                         qSlct_ProdSku_14.[Return Rate], qSlct_ProdSku_14.Vendor, qSlct_ProdSku_14.[Vendor Style #], qSlct_ProdSku_14.[Original Price], qSlct_ProdSku_14.[Current Price], qSlct_ProdSku_14.[Current Discount %], 
                         CASE WHEN [cost] > 0 THEN [Cost] WHEN isnull([oh units], 0) > 0 THEN [oh cost] / [oh units] WHEN isnull([Event BOP U], 0) > 0 THEN ([Event BOP Cost $] / [Event BOP U]) WHEN isnull([Actual Demand Units], 0) 
                         > 0 THEN [Actual Demand Cost $] / [Actual Demand Units] ELSE 0 END, qSlct_ProdSku_14.[Current Event #], qSlct_ProdSku_14.[Event #], qSlct_ProdSku_14.[Event Description], qSlct_ProdSku_14.[Event Go Live], 
                         qSlct_ProdSku_14.[Event End Date], qSlct_ProdSku_14.[Event Begin Fiscal Week], qSlct_ProdSku_14.[Event Begin Fiscal Year], qSlct_ProdSku_14.[Beyond Basic], qSlct_ProdSku_14.[Future Event], 
                         qSlct_ProdSku_14.[OH Units], qSlct_ProdSku_14.[OH Cost], qSlct_ProdSku_14.[OO Units], qSlct_ProdSku_14.[Requested OO Units], qSlct_ProdSku_14.[Event OO Units], qSlct_ProdSku_14.[Backorder Units], 
                         qSlct_ProdSku_14.[Event BOP U], qSlct_ProdSku_14.[Event BOP Cost $], qSlct_ProdSku_14.[Actual Demand Units], qSlct_ProdSku_14.[Actual Demand Cost $], qSlct_ProdSku_14.[Actual Demand $], 
                         qSlct_ProdSku_14.[Actual Gross Demand $], qSlct_ProdSku_14.[Projection Ticket Demand $], qSlct_ProdSku_14.[Projection Demand Cost $], qSlct_ProdSku_14.[Projection Demand Units], 
                         qSlct_ProdSku_14.[Plan Gross Demand $], qSlct_ProdSku_14.[Plan Net Demand $], qSlct_ProdSku_14.[Plan Demand Cost $], qSlct_ProdSku_14.[Plan Demand Units], MkTbl_1stProjection.[OFFERED DEMAND $], 
                         qSlct_ProdSku_14.[Forecast Gross Demand $], qSlct_ProdSku_14.[Forecast Net Demand $], qSlct_ProdSku_14.[Forecast Demand Cost $], qSlct_ProdSku_14.[Forecast Demand Units]
Print 'Finished appending to qSlct_ProdSku_15 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMktbl_qSlct_ProdSku_16
-- 200521 - This query uses table MkTbl_1stProjection.  Kari said in email send today that someone will propulate it through On-Demand menu on a regular basis.
TRUNCATE TABLE qSlct_ProdSku_16
INSERT INTO qSlct_ProdSku_16
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Beyond Basic], [Future Event], [Original Price], [Current Price], [Current Discount %], Cost, [OH Units], [OO Units], 
                         [Requested OO Units], [Event OO Units], [Backorder Units], [Event BOP U], [Event Description], [Event #], [Event Go Live], [Current Event #], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], 
                         [Actual Gross Demand $], [Actual Offered Demand $], [Projection Offered Demand $], [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units], [1st Projection Offered Demand $], 
                         [1st Projection Demand Cost $], [1st Projection Demand Units], [Plan Offered Demand $], [Plan Gross Demand $], [Plan Net Demand $], [Plan Demand Cost $], [Plan Demand Units], [Forecast Offered Demand $], 
                         [Forecast Gross Demand $], [Forecast Net Demand $], [Forecast Demand Cost $], [Forecast Demand Units])
SELECT        Category, Division, Department, Class, Style, Color, INV5, INV7, [Return Rate], Vendor, [Vendor Style #], [Beyond Basic], [Future Event], [Original Price], [Current Price], [Current Discount %], 
                         CASE WHEN [Current cost] > 0 THEN [current cost] WHEN isnull([oh units], 0) > 0 THEN [oh cost] / [oh units] WHEN isnull([Event BOP U], 0) > 0 THEN [Event BOP Cost $] / [Event BOP U] WHEN isnull([Actual Demand Units], 0) 
                         > 0 THEN [Actual Demand Cost $] / [Actual Demand Units] ELSE 0 END AS Cost, [OH Units], [OO Units], [Requested OO Units], [Event OO Units], [Backorder Units], [Event BOP U], [Event Description], [Event #], [Event Go Live], 
                         [Current Event #], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $], CASE WHEN [Plan Gross Demand $] > 0 THEN CASE WHEN isnull([Plan Demand Units], 0) 
                         > 0 THEN ([Plan Gross Demand $] / [Plan Demand Units]) * [Actual Demand Units] ELSE 0 END WHEN [Forecast Gross Demand $] > 0 THEN CASE WHEN isnull([Forecast Demand Units], 0) 
                         > 0 THEN ([Forecast Gross Demand $] / [Forecast Demand Units]) * [Actual Demand Units] ELSE 0 END ELSE [Actual Gross Demand $] END AS [Actual Offered Demand $], 
                         CASE WHEN [Plan Gross Demand $] > 0 THEN CASE WHEN [Projection Demand Units] > 0 THEN ([Plan Gross Demand $] / [Plan Demand Units]) 
                         * [Projection Demand Units] ELSE 0 END WHEN [Forecast Gross Demand $] > 0 THEN CASE WHEN [Forecast Demand Units] > 0 THEN ([Forecast Gross Demand $] / [Forecast Demand Units]) 
                         * [Projection Demand Units] ELSE 0 END ELSE [Projection Ticket Demand $] END AS [Projection Offered Demand $], [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units], 
                         [1st Projection Offered Demand $], [1st Projection Demand Cost $], [1st Projection Demand Units], [Plan Gross Demand $] AS [Plan Offered Demand $], [Plan Gross Demand $], [Plan Net Demand $], [Plan Demand Cost $], 
                         [Plan Demand Units], CASE WHEN [Plan Gross Demand $] > 0 THEN CASE WHEN [Plan Demand Units] > 0 THEN [Forecast Demand Units] * ([Plan Gross Demand $] / [Plan Demand Units]) 
                         ELSE 0 END ELSE [Forecast Gross Demand $] END AS [Forecast Offered Demand $], [Forecast Gross Demand $], [Forecast Net Demand $], [Forecast Demand Cost $], [Forecast Demand Units]
FROM            qSlct_ProdSku_15
Print 'Finished appending to qSlct_ProdSku_16 at ' + CONVERT(varchar(10),  getdate(), 24)


END

GO
