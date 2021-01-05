SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:	    ajay.pandey
-- Create date: 04/08/2020
-- Description:	Part of Weekly Update 11 routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd680ApdFiscalHindsightINV7] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Print 'Started procedure at ' + CONVERT(varchar(10),  getdate(), 24)

--  Replaces qDel_MkTbl_FiscalHindsightINV7
DELETE FROM MkTbl_FiscalHindsightINV7
WHERE        (Date > GETDATE() - 15)
Print 'Finished deleting from MkTbl_FiscalHindsightINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qApp_FiscalHindsightINV7
-- 
INSERT INTO MkTbl_FiscalHindsightINV7
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Vendor #], Vendor, [Vendor Style], [Original Price], [Current Price], [Current Cost], [Current Event #], [Current Event], [Last Event #], [Last Event], [Current OH Units], 
                         [Current OH Cost $], [Current OH Price $], [Current OO Units], [Current Backorder Units], Status, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $], [Advertised Price], 
                         AUR, AUC, [BOP Units], [BOP Cost], [BOP Advertised Price], [Fiscal Year], [Fiscal Month], [Fiscal Week], Date)
SELECT        Category, Division, Department, Class, Style, Color, INV5, INV7, MAX([Vendor #]) AS [Vendor #], MAX(Vendor) AS Vendor, MAX([Vendor Style]) AS [Vendor Style], MAX([Original Price]) AS [Original Price], MAX([Current Price]) 
                         AS [Current Price], MAX([Current Cost]) AS [Current Cost], [Current Event #], [Current Event], [Last Event #], [Last Event], SUM([Current OH Units]) AS [Current OH Units], SUM([Current OH Cost $]) AS [Current OH Cost $], 
                         SUM([Current OH Price $]) AS [Current OH Price $], SUM([Current OO Units]) AS [Current OO Units], SUM([Current Backorder Units]) AS [Current Backorder Units], Status, SUM([Demand Units]) AS [Demand Units], 
                         SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand$], SUM([Offered Demand $]) AS [Offered Demand $], SUM([Demand Margin $]) 
                         AS [Demand Margin $], [Advertised Demand $] / [Demand Units] AS [Advertised Price], [Demand $] / [Demand Units] AS AUR, [Demand Cost $] / [Demand Units] AS AUC, SUM([BOP Units]) AS [BOP Units], SUM([BOP Cost]) 
                         AS [BOP Cost], SUM([BOP Advertised Price]) AS [BOP Advertised Price], [Fiscal Year], [Fiscal Month], [Fiscal Week], Date
FROM            MkTbl_FiscalHindsightINV10
GROUP BY Category, Division, Department, Class, Style, Color, INV5, INV7, [Current Event #], [Current Event], [Last Event #], [Last Event], Status, [Fiscal Year], [Fiscal Month], [Fiscal Week], Date, [Advertised Demand $] / [Demand Units], 
                         [Demand $] / [Demand Units], [Demand Cost $] / [Demand Units]
HAVING        (Date >= GETDATE() - 15)
Print 'Finished appending to MkTbl_FiscalHindsightINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMkTbl_ReturnsINV7
-- 
truncate table MkTbl_ReturnsINV7
INSERT INTO MkTbl_ReturnsINV7
                         (INV5, INV7, [Return %], [Shipped Units], [Shipped Cost $], [Shipped $], [Advertised Shipped $], [Return Units], [Return Cost], [Return $], [Advertised Return $])
SELECT        INV5, INV7, ROUND(CASE WHEN [Shipped Units] = 0 THEN 0 ELSE [Return Units] / [Shipped Units] END, 3) AS [Return %], [Shipped Units], [Shipped Cost $], [Shipped $], [Advertised Shipped $], [Return Units], [Return Cost], 
                         [Return $], [Advertised Return $]
FROM            vwDailyUpdSlct_ReturnsINV7
Print 'Finished appending to MkTbl_ReturnsINV7 at ' + CONVERT(varchar(10),  getdate(), 24)


-- Replaces qMkTbl_CurrentINV7
-- 
truncate table MkTbl_CurrentINV7
INSERT INTO MkTbl_CurrentINV7
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Original Price], [Current Price], [Current Cost], [Current Event #], [Current Event], [Last Event #], [Last Event], [Current OH Units], [Current OO Units], 
                         [Next 30 Days OO Units], [Current Backorder Units], [Current Backorder Cost $], [Current Backorder $], [Return %], [First Sales Date], [First Receipt Date], [Last Receipt Date], [Next Receipt Date],[Vendor #],[Vendor],[Vendor Style])
SELECT        vwDailyUpdSlct_CurrentINV7_06.Category, vwDailyUpdSlct_CurrentINV7_06.Division, vwDailyUpdSlct_CurrentINV7_06.Department, vwDailyUpdSlct_CurrentINV7_06.Class, MIN(vwDailyUpdSlct_CurrentINV7_06.Style) AS Style, 
                         MIN(vwDailyUpdSlct_CurrentINV7_06.Color) AS Color, vwDailyUpdSlct_CurrentINV7_06.INV5, vwDailyUpdSlct_CurrentINV7_06.INV7, vwDailyUpdSlct_CurrentINV7_06.[Original Price], 						   
                         vwDailyUpdSlct_CurrentINV7_06.[Current Price], vwDailyUpdSlct_CurrentINV7_06.[Current Cost], vwDailyUpdSlct_CurrentINV7_05.[Current Event #], vwDailyUpdSlct_CurrentINV7_05.[Current Event], 
                         vwDailyUpdSlct_CurrentINV7_05.[Last Event #], vwDailyUpdSlct_CurrentINV7_05.[Last Event], vwDailyUpdSlct_CurrentINV7_06.[Current OH Units], vwDailyUpdSlct_CurrentINV7_06.[Current OO Units], 
                         vwDailyUpdSlct_CurrentINV7_06.[Next 30 Days OO Units], vwDailyUpdSlct_CurrentINV7_06.[Current Backorder Units], vwDailyUpdSlct_CurrentINV7_06.[Current Backorder Cost $], 
                         vwDailyUpdSlct_CurrentINV7_06.[Current Backorder $], vwDailyUpdSlct_CurrentINV7_06.[Return %], vwDailyUpdSlct_CurrentINV7_06.[First Sales Date], vwDailyUpdSlct_CurrentINV7_06.[First Receipt Date], 
                         vwDailyUpdSlct_CurrentINV7_06.[Last Receipt Date], vwDailyUpdSlct_CurrentINV7_06.[Next Receipt Date],
						 vwDailyUpdSlct_CurrentINV7_06.[Vendor #],
						 vwDailyUpdSlct_CurrentINV7_06.[Vendor],
						 vwDailyUpdSlct_CurrentINV7_06.[Vendor Style]
FROM            vwDailyUpdSlct_CurrentINV7_06 LEFT OUTER JOIN
                         vwDailyUpdSlct_CurrentINV7_05 ON vwDailyUpdSlct_CurrentINV7_06.INV7 = vwDailyUpdSlct_CurrentINV7_05.INV7
GROUP BY vwDailyUpdSlct_CurrentINV7_06.Category, vwDailyUpdSlct_CurrentINV7_06.Division, vwDailyUpdSlct_CurrentINV7_06.Department, vwDailyUpdSlct_CurrentINV7_06.Class, vwDailyUpdSlct_CurrentINV7_06.INV5, 
                         vwDailyUpdSlct_CurrentINV7_06.INV7, vwDailyUpdSlct_CurrentINV7_06.[Original Price], vwDailyUpdSlct_CurrentINV7_06.[Current Price], vwDailyUpdSlct_CurrentINV7_06.[Current Cost], 
                         vwDailyUpdSlct_CurrentINV7_05.[Current Event #], vwDailyUpdSlct_CurrentINV7_05.[Current Event], vwDailyUpdSlct_CurrentINV7_05.[Last Event #], vwDailyUpdSlct_CurrentINV7_05.[Last Event], 
                         vwDailyUpdSlct_CurrentINV7_06.[Current OH Units], vwDailyUpdSlct_CurrentINV7_06.[Current OO Units], vwDailyUpdSlct_CurrentINV7_06.[Next 30 Days OO Units], vwDailyUpdSlct_CurrentINV7_06.[Current Backorder Units], 
                         vwDailyUpdSlct_CurrentINV7_06.[Current Backorder Cost $], vwDailyUpdSlct_CurrentINV7_06.[Current Backorder $], vwDailyUpdSlct_CurrentINV7_06.[Return %], vwDailyUpdSlct_CurrentINV7_06.[First Sales Date], 
                         vwDailyUpdSlct_CurrentINV7_06.[First Receipt Date], vwDailyUpdSlct_CurrentINV7_06.[Last Receipt Date], vwDailyUpdSlct_CurrentINV7_06.[Next Receipt Date],
						 vwDailyUpdSlct_CurrentINV7_06.[Vendor #],
						 vwDailyUpdSlct_CurrentINV7_06.[Vendor],
						 vwDailyUpdSlct_CurrentINV7_06.[Vendor Style]
Print 'Finished appending to MkTbl_CurrentINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qUpd_FiscalHindsightINV7
-- 
UPDATE       MkTbl_CurrentINV7
SET                [Original Price] = MkTbl_CurrentINV7.[Original Price], [Current Price] = MkTbl_CurrentINV7.[Current Price], [Current Cost] = MkTbl_CurrentINV7.[Current Cost], [Current Event #] = MkTbl_CurrentINV7.[Current Event #], 
                         [Current Event] = MkTbl_CurrentINV7.[Current Event], [Last Event #] = MkTbl_CurrentINV7.[Last Event #], [Last Event] = MkTbl_CurrentINV7.[Last Event], [Current OH Units] = MkTbl_CurrentINV7.[Current OH Units], 
                         [Current OO Units] = MkTbl_CurrentINV7.[Current OO Units], [Next 30 Days OO Units] = MkTbl_CurrentINV7.[Next 30 Days OO Units], [First Sales Date] = MkTbl_CurrentINV7.[First Sales Date], 
                         [First Receipt Date] = MkTbl_CurrentINV7.[First Receipt Date], [Last Receipt Date] = MkTbl_CurrentINV7.[Last Receipt Date], [Next Receipt Date] = MkTbl_CurrentINV7.[Next Receipt Date], 
                         [Current Backorder Units] = MkTbl_CurrentINV7.[Current Backorder Units], [Return %] = MkTbl_CurrentINV7.[Return %]
FROM            MkTbl_CurrentINV7 INNER JOIN
                         MkTbl_FiscalHindsightINV7 ON MkTbl_CurrentINV7.INV7 = MkTbl_FiscalHindsightINV7.INV7
Print 'Finished updating MkTbl_CurrentINV7 at ' + CONVERT(varchar(10),  getdate(), 24)


END
GO
