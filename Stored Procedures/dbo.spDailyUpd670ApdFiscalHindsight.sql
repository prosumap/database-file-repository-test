SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO


-- =============================================
-- Author:		ajay.pandey
-- Create date: 07/31/2020
-- Description:	Vendor#, Vendor, Vendor Style has been added into MkTbl_CurrentINV10.
-- Source:  DB_FiscalReporting
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd670ApdFiscalHindsight] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


Print 'Started procedure at ' + CONVERT(varchar(10),  getdate(), 24)

--  Replaces qDel_MkTbl_FiscalHindsightINV10
DELETE FROM MkTbl_FiscalHindsightINV10
WHERE        (Date >= GETDATE() - 15)


-- Replaces qSlct_FiscalHindsight_01
-- 200523 - Found out that updating the fields on Slct_FiscalHindsight_01 to ProperCase after appending is a lot faster. 
TRUNCATE TABLE Slct_FiscalHindsight_01 
INSERT INTO Slct_FiscalHindsight_01
                         (Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style])
SELECT        CAT_DESCRIPTION AS Department, SUBCAT_DESCRIPTION AS Class, [STYLE DESCRIPTION] AS Style, [COLOR DESCRIPTION] AS Color, [SIZE DESCRIPTION] AS Size, INV5, INV7, Sku AS INV10, MAX([Vendor #]) AS [Vendor #], 
                         [Vendor Name] AS Vendor, [Vendor Style]
FROM            ExpMkTbl_ProdSku
GROUP BY CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], INV5, INV7, Sku, [Vendor Name], [Vendor Style]
Print 'Finished appending to Slct_FiscalHindsight_01 at ' + CONVERT(varchar(10),  getdate(), 24)

UPDATE       Slct_FiscalHindsight_01
SET                Department = dbo.fProperCase(Department, NULL, 3), Class = dbo.fProperCase(Class, NULL, 3), Style = dbo.fProperCase(Style, NULL, 3), Color = dbo.fProperCase(Color, NULL, 3), Size = dbo.fProperCase(Size, NULL, 3), 
                         Vendor = dbo.fProperCase(Vendor, NULL, 3)
Print 'Finished updating Slct_FiscalHindsight_01 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qSlct_FiscalHindsight_02
-- 
TRUNCATE TABLE Slct_FiscalHindsight_02
INSERT INTO Slct_FiscalHindsight_02
                         (Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], Fiscal_Year, Fiscal_Month#, 
                         Fiscal_Wk#, Date)
SELECT        CASE WHEN [Slct_fiscalhindsight_01].[department] = 'non-apparel' THEN 'Non-Travel' WHEN CHARINDEX('Travel', [Slct_FiscalHindsight_01].[Style]) > 0 THEN 'Travel' ELSE 'Non-Travel' END AS Category, 
                         dbo.fProperCase(CASE WHEN [Slct_FiscalHindsight_01].[Department] = 'non-Apparel' THEN [Slct_FiscalHindsight_01].[Department] WHEN [Slct_FiscalHindsight_01].[Department] = 'Swim' THEN [Slct_FiscalHindsight_01].[Department]
                          WHEN [Slct_FiscalHindsight_01].[Department] = 'Home & Gift' THEN [Slct_FiscalHindsight_01].[Department] ELSE 'Apparel' END, NULL, 3) AS Division, Slct_FiscalHindsight_01.Department, Slct_FiscalHindsight_01.Class, 
                         MAX(Slct_FiscalHindsight_01.Style) AS Style, MAX(Slct_FiscalHindsight_01.Color) AS Color, MAX(Slct_FiscalHindsight_01.Size) AS Size, Slct_FiscalHindsight_01.INV5, Slct_FiscalHindsight_01.INV7, 
                         Slct_FiscalHindsight_01.INV10, Slct_FiscalHindsight_01.[Vendor #], Slct_FiscalHindsight_01.Vendor, Slct_FiscalHindsight_01.[Vendor Style], vwDailyUpdSlct_Results_Orders.Status, SUM(vwDailyUpdSlct_Results_Orders.Units) 
                         AS [Demand Units], SUM(vwDailyUpdSlct_Results_Orders.Cost$) AS [Demand Cost $], SUM(vwDailyUpdSlct_Results_Orders.Net$) AS [Demand $], SUM(vwDailyUpdSlct_Results_Orders.Gross$) AS [Advertised Demand $], 
                         vwDailyUpdSlct_Results_Orders.Fiscal_Year, vwDailyUpdSlct_Results_Orders.Fiscal_Month#, vwDailyUpdSlct_Results_Orders.Fiscal_Wk#, vwDailyUpdSlct_Results_Orders.Date
FROM            vwDailyUpdSlct_Results_Orders RIGHT OUTER JOIN
                         Slct_FiscalHindsight_01 ON vwDailyUpdSlct_Results_Orders.INV10 = Slct_FiscalHindsight_01.INV10
GROUP BY CASE WHEN [Slct_fiscalhindsight_01].[department] = 'non-apparel' THEN 'Non-Travel' WHEN CHARINDEX('Travel', [Slct_FiscalHindsight_01].[Style]) > 0 THEN 'Travel' ELSE 'Non-Travel' END, 
                         dbo.fProperCase(CASE WHEN [Slct_FiscalHindsight_01].[Department] = 'non-Apparel' THEN [Slct_FiscalHindsight_01].[Department] WHEN [Slct_FiscalHindsight_01].[Department] = 'Swim' THEN [Slct_FiscalHindsight_01].[Department]
                          WHEN [Slct_FiscalHindsight_01].[Department] = 'Home & Gift' THEN [Slct_FiscalHindsight_01].[Department] ELSE 'Apparel' END, NULL, 3), Slct_FiscalHindsight_01.Department, Slct_FiscalHindsight_01.Class, 
                         Slct_FiscalHindsight_01.INV5, Slct_FiscalHindsight_01.INV7, Slct_FiscalHindsight_01.INV10, Slct_FiscalHindsight_01.[Vendor #], Slct_FiscalHindsight_01.Vendor, Slct_FiscalHindsight_01.[Vendor Style], 
                         vwDailyUpdSlct_Results_Orders.Status, vwDailyUpdSlct_Results_Orders.Fiscal_Year, vwDailyUpdSlct_Results_Orders.Fiscal_Month#, vwDailyUpdSlct_Results_Orders.Fiscal_Wk#, 
                         vwDailyUpdSlct_Results_Orders.Date
HAVING        (vwDailyUpdSlct_Results_Orders.Date >= GETDATE() - 15)
Print 'Finished appending to Slct_FiscalHindsight_02 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qSlct_FiscalHindsight_03
-- 
TRUNCATE TABLE Slct_FiscalHindsight_03
INSERT INTO Slct_FiscalHindsight_03
                         (Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Demand Margin $], [Fiscal Year], 
                         [Fiscal Month], [Fiscal Week], Date)
SELECT        Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], 
                         [Demand $] - [Demand Cost $] AS [Demand Margin $], Fiscal_Year AS [Fiscal Year], Fiscal_Month# AS [Fiscal Month], Fiscal_Wk# AS [Fiscal Week], Date
FROM            Slct_FiscalHindsight_02
GROUP BY Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Demand $] - [Demand Cost $], 
                         Fiscal_Year, Fiscal_Month#, Fiscal_Wk#, Date
Print 'Finished appending to Slct_FiscalHindsight_03 at ' + CONVERT(varchar(10),  getdate(), 24)


-- Replaces qSlct_FiscalHindsight_04
-- 
TRUNCATE TABLE Slct_FiscalHindsight_04
INSERT INTO Slct_FiscalHindsight_04
                         (Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Demand Margin $], 
                         [Advertised Price], AUR, AUC, [BOP Units], [BOP Cost], [Fiscal Year], [Fiscal Month], [Fiscal Week], Date)
SELECT        Slct_FiscalHindsight_03.Category, Slct_FiscalHindsight_03.Division, Slct_FiscalHindsight_03.Department, Slct_FiscalHindsight_03.Class, Slct_FiscalHindsight_03.Style, Slct_FiscalHindsight_03.Color, 
                         Slct_FiscalHindsight_03.Size, Slct_FiscalHindsight_03.INV5, Slct_FiscalHindsight_03.INV7, Slct_FiscalHindsight_03.INV10, Slct_FiscalHindsight_03.[Vendor #], Slct_FiscalHindsight_03.Vendor, 
                         Slct_FiscalHindsight_03.[Vendor Style], Slct_FiscalHindsight_03.Status, Slct_FiscalHindsight_03.[Demand Units], Slct_FiscalHindsight_03.[Demand Cost $], Slct_FiscalHindsight_03.[Demand $], 
                         Slct_FiscalHindsight_03.[Advertised Demand $], Slct_FiscalHindsight_03.[Demand Margin $], Slct_FiscalHindsight_03.[Advertised Demand $] / Slct_FiscalHindsight_03.[Demand Units] AS [Advertised Price], 
                         Slct_FiscalHindsight_03.[Demand $] / Slct_FiscalHindsight_03.[Demand Units] AS AUR, Slct_FiscalHindsight_03.[Demand Cost $] / Slct_FiscalHindsight_03.[Demand Units] AS AUC, SUM(MkTbl_WklyInventory.UNITS) 
                         AS [BOP Units], SUM(MkTbl_WklyInventory.COST) AS [BOP Cost], Slct_FiscalHindsight_03.[Fiscal Year], Slct_FiscalHindsight_03.[Fiscal Month], Slct_FiscalHindsight_03.[Fiscal Week], Slct_FiscalHindsight_03.Date
FROM            Slct_FiscalHindsight_03 LEFT OUTER JOIN
                         MkTbl_WklyInventory ON Slct_FiscalHindsight_03.[Fiscal Week] = MkTbl_WklyInventory.FISCAL_WEEK AND Slct_FiscalHindsight_03.[Fiscal Year] = MkTbl_WklyInventory.FISCAL_YEAR AND 
                         Slct_FiscalHindsight_03.INV10 = MkTbl_WklyInventory.SKU
GROUP BY Slct_FiscalHindsight_03.Category, Slct_FiscalHindsight_03.Division, Slct_FiscalHindsight_03.Department, Slct_FiscalHindsight_03.Class, Slct_FiscalHindsight_03.Style, Slct_FiscalHindsight_03.Color, 
                         Slct_FiscalHindsight_03.Size, Slct_FiscalHindsight_03.INV5, Slct_FiscalHindsight_03.INV7, Slct_FiscalHindsight_03.INV10, Slct_FiscalHindsight_03.[Vendor #], Slct_FiscalHindsight_03.Vendor, 
                         Slct_FiscalHindsight_03.[Vendor Style], Slct_FiscalHindsight_03.Status, Slct_FiscalHindsight_03.[Demand Units], Slct_FiscalHindsight_03.[Demand Cost $], Slct_FiscalHindsight_03.[Demand $], 
                         Slct_FiscalHindsight_03.[Advertised Demand $], Slct_FiscalHindsight_03.[Demand Margin $], Slct_FiscalHindsight_03.[Advertised Demand $] / Slct_FiscalHindsight_03.[Demand Units], 
                         Slct_FiscalHindsight_03.[Demand $] / Slct_FiscalHindsight_03.[Demand Units], Slct_FiscalHindsight_03.[Demand Cost $] / Slct_FiscalHindsight_03.[Demand Units], Slct_FiscalHindsight_03.[Fiscal Year], 
                         Slct_FiscalHindsight_03.[Fiscal Month], Slct_FiscalHindsight_03.[Fiscal Week], Slct_FiscalHindsight_03.Date
Print 'Finished appending to  Slct_FiscalHindsight_04 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qApp_FiscalHindsightINV10
-- 
INSERT INTO MkTbl_FiscalHindsightINV10
                         (Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], [Original Price], [Current Price], [Current Cost], [Current Event #], [Current Event], [Last Event #], [Last Event], 
                         [Current OH Units], [Current OH Cost $], [Current OH Price $], [Next 30 Days OO Units], [Current OO Units], [Current Backorder Units], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], 
                         [Offered Demand $], [Demand Margin $], [Advertised Price], AUR, AUC, [BOP Units], [BOP Cost], [BOP Advertised Price], [Fiscal Year], [Fiscal Month], [Fiscal Week], Date)
SELECT        Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Vendor #], Vendor, [Vendor Style], 0 AS [Original Price], 0 AS [Current Price], 0 AS [Current Cost], 0 AS [Current Event #], '' AS [Current Event], 
                         0 AS [Last Event #], '' AS [Last Event], 0 AS [Current OH Units], 0 AS [Current OH Cost $], 0 AS [Current OH Price $], 0 AS [Next 30 Days OO Units], 0 AS [Current OO Units], 0 AS [Current Backorder Units], Status, [Demand Units], 
                         [Demand Cost $], [Demand $], [Advertised Demand $], 0 AS [Offered Demand $], [Demand Margin $], [Advertised Price], AUR, AUC, [BOP Units], [BOP Cost], [BOP Units] * [Advertised Price] AS [BOP Advertised Price], [Fiscal Year],
                          [Fiscal Month], [Fiscal Week], Date
FROM            Slct_FiscalHindsight_04
Print 'Finished appending to MkTbl_FiscalHindsightINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMkTbl_ReceiptINV10
-- 
TRUNCATE TABLE MkTbl_ReceiptINV10
INSERT INTO MkTbl_ReceiptINV10
                         (INV10, [Last Receipt Date], [First Receipt Date], [Next Receipt Date])
SELECT        vwDailyUpdSlct_Receipt.INV10, vwDailyUpdSlct_Receipt.[Last Receipt Date], vwDailyUpdSlct_Receipt.[First Receipt Date], vwDailyUpdSlct_NextReceipt.[Next Receipt Date]
FROM            vwDailyUpdSlct_Receipt LEFT OUTER JOIN
                         vwDailyUpdSlct_NextReceipt ON vwDailyUpdSlct_Receipt.INV10 = vwDailyUpdSlct_NextReceipt.INV10
Print 'Finished appending to MkTbl_ReceiptINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMkTbl_ReturnsINV10
-- This MkTbl query was not included in the Update macro but is needed in the next query
TRUNCATE TABLE MkTbl_ReturnsINV10
INSERT INTO MkTbl_ReturnsINV10
                         (INV5, INV7, INV10, [Return %], [Shipped Units], [Shipped Cost $], [Shipped $], [Advertised Shipped $], [Return Units], [Return Cost], [Return $], [Advertised Return $])
SELECT        vwDailyUpdSlct_Returns_02.INV5, vwDailyUpdSlct_Returns_02.INV7, vwDailyUpdSlct_Returns_02.INV10, ROUND(CASE WHEN [shipped units] = 0 THEN 0 ELSE [return units] / [shipped units] END, 3) AS [Return %], 
                         vwDailyUpdSlct_Returns_02.[Shipped Units], vwDailyUpdSlct_Returns_02.[Shipped Cost $], vwDailyUpdSlct_Returns_02.[Shipped $], vwDailyUpdSlct_Returns_02.[Advertised Shipped $], 
                         vwDailyUpdSlct_Returns_01.[Return Units], vwDailyUpdSlct_Returns_01.[Return Cost], vwDailyUpdSlct_Returns_01.[Return $], vwDailyUpdSlct_Returns_01.[Advertised Return $]
FROM            vwDailyUpdSlct_Returns_01 RIGHT OUTER JOIN
                         vwDailyUpdSlct_Returns_02 ON vwDailyUpdSlct_Returns_01.INV10 = vwDailyUpdSlct_Returns_02.INV10
Print 'Finished appending to MkTbl_ReturnsINV10 at ' + CONVERT(varchar(10),  getdate(), 24)


-- Replaces qMkTbl_CurrentINV10
-- 
TRUNCATE TABLE MkTbl_CurrentINV10
INSERT INTO MkTbl_CurrentINV10
                         (Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Original Price], [Current Price], [Current Cost], [Current Event #], [Current Event], [Last Event #], [Last Event], [First Sales Date], [First Receipt Date], 
                         [Last Receipt Date], [Next Receipt Date], [Current OH Units], [Current OO Units], [Next 30 Days OO Units], [Current Backorder Units], [Current Backorder Cost $], [Current Backorder $], [Return %],[Vendor], [Vendor #], [Vendor Style],[Current Date])
SELECT        vwDailyUpdSlct_Current_07.Category, vwDailyUpdSlct_Current_07.Division, vwDailyUpdSlct_Current_07.Department, vwDailyUpdSlct_Current_07.Class, vwDailyUpdSlct_Current_07.Style, vwDailyUpdSlct_Current_07.Color, 
                         vwDailyUpdSlct_Current_07.Size, vwDailyUpdSlct_Current_07.INV5, vwDailyUpdSlct_Current_07.INV7, vwDailyUpdSlct_Current_07.INV10, vwDailyUpdSlct_Current_07.[Original Price], vwDailyUpdSlct_Current_07.[Current Price], 
                         vwDailyUpdSlct_Current_07.[Current Cost], vwDailyUpdSlct_Current_07.[Current Event #], vwDailyUpdSlct_Current_07.[Current Event], vwDailyUpdSlct_Current_07.[Last Event #], vwDailyUpdSlct_Current_07.[Last Event], 
                         vwDailyUpdSlct_Current_07.[First Sales Date], vwDailyUpdSlct_Current_07.[First Receipt Date], vwDailyUpdSlct_Current_07.[Last Receipt Date], vwDailyUpdSlct_Current_07.[Next Receipt Date], 
                         vwDailyUpdSlct_Current_07.[Current OH Units], vwDailyUpdSlct_Current_07.[Current OO Units], vwDailyUpdSlct_Current_07.[Next 30 Days OO Units], vwDailyUpdSlct_Current_07.[Current Backorder Units], 
                         vwDailyUpdSlct_Current_07.[Current Backorder Cost $], vwDailyUpdSlct_Current_07.[Current Backorder $], MkTbl_ReturnsINV10.[Return %],vwDailyUpdSlct_Current_07.[Vendor], vwDailyUpdSlct_Current_07.[Vendor #], vwDailyUpdSlct_Current_07.[Vendor Style],GETDATE()
FROM            MkTbl_ReturnsINV10 RIGHT OUTER JOIN
                         vwDailyUpdSlct_Current_07 ON MkTbl_ReturnsINV10.INV10 = vwDailyUpdSlct_Current_07.INV10
GROUP BY vwDailyUpdSlct_Current_07.Category, vwDailyUpdSlct_Current_07.Division, vwDailyUpdSlct_Current_07.Department, vwDailyUpdSlct_Current_07.Class, vwDailyUpdSlct_Current_07.Style, vwDailyUpdSlct_Current_07.Color, 
                         vwDailyUpdSlct_Current_07.Size, vwDailyUpdSlct_Current_07.INV5, vwDailyUpdSlct_Current_07.INV7, vwDailyUpdSlct_Current_07.INV10, vwDailyUpdSlct_Current_07.[Original Price], vwDailyUpdSlct_Current_07.[Current Price], 
                         vwDailyUpdSlct_Current_07.[Current Cost], vwDailyUpdSlct_Current_07.[Current Event #], vwDailyUpdSlct_Current_07.[Current Event], vwDailyUpdSlct_Current_07.[Last Event #], vwDailyUpdSlct_Current_07.[Last Event], 
                         vwDailyUpdSlct_Current_07.[First Sales Date], vwDailyUpdSlct_Current_07.[First Receipt Date], vwDailyUpdSlct_Current_07.[Last Receipt Date], vwDailyUpdSlct_Current_07.[Next Receipt Date], 
                         vwDailyUpdSlct_Current_07.[Current OH Units], vwDailyUpdSlct_Current_07.[Current OO Units], vwDailyUpdSlct_Current_07.[Next 30 Days OO Units], vwDailyUpdSlct_Current_07.[Current Backorder Units],
                         vwDailyUpdSlct_Current_07.[Current Backorder Cost $], vwDailyUpdSlct_Current_07.[Current Backorder $], MkTbl_ReturnsINV10.[Return %], vwDailyUpdSlct_Current_07.[Vendor], vwDailyUpdSlct_Current_07.[Vendor #], vwDailyUpdSlct_Current_07.[Vendor Style]
Print 'Finished appending to MkTbl_CurrentINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

UPDATE       MkTbl_CurrentINV10
SET                Department = dbo.fProperCase(Department, NULL, 3), Division = dbo.fProperCase(Division, NULL, 3), Class = dbo.fProperCase(Class, NULL, 3), Style = dbo.fProperCase(Style, NULL, 3), Color = dbo.fProperCase(Color, NULL, 3), 
                         Size = dbo.fProperCase(Size, NULL, 3)
Print 'Finished updating MkTbl_CurrentINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qUpd_FiscalHindsightINV10
-- 
UPDATE       MkTbl_FiscalHindsightINV10
SET                Style = MkTbl_CurrentINV10.Style, Color = MkTbl_CurrentINV10.Color, Size = MkTbl_CurrentINV10.Size, [Original Price] = MkTbl_CurrentINV10.[Original Price], [Current Price] = MkTbl_CurrentINV10.[Current Price], 
                         [Current Cost] = MkTbl_CurrentINV10.[Current Cost], [Current Event #] = MkTbl_CurrentINV10.[Current Event #], [Current Event] = MkTbl_CurrentINV10.[Current Event], [Last Event #] = MkTbl_CurrentINV10.[Last Event #], 
                         [Last Event] = MkTbl_CurrentINV10.[Last Event], [First Sales Date] = MkTbl_CurrentINV10.[First Sales Date], [First Receipt Date] = MkTbl_CurrentINV10.[First Receipt Date], 
                         [Last Receipt Date] = MkTbl_CurrentINV10.[Last Receipt Date], [Next Receipt Date] = MkTbl_CurrentINV10.[Next Receipt Date], [Current OH Units] = MkTbl_CurrentINV10.[Current OH Units], 
                         [Current OO Units] = MkTbl_CurrentINV10.[Current OO Units], [Next 30 Days OO Units] = MkTbl_CurrentINV10.[Next 30 Days OO Units], [Current Backorder Units] = MkTbl_CurrentINV10.[Current Backorder Units], 
                         [Return %] = MkTbl_CurrentINV10.[Return %]
FROM            MkTbl_FiscalHindsightINV10 INNER JOIN
                         MkTbl_CurrentINV10 ON MkTbl_FiscalHindsightINV10.INV10 = MkTbl_CurrentINV10.INV10

END
GO
