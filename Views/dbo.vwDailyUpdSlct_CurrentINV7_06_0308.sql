SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vwDailyUpdSlct_CurrentINV7_06_0308]
AS
SELECT        dbo.MkTbl_CurrentINV10.Category, dbo.MkTbl_CurrentINV10.Division, dbo.MkTbl_CurrentINV10.Department, dbo.MkTbl_CurrentINV10.Class, dbo.MkTbl_CurrentINV10.Style, dbo.MkTbl_CurrentINV10.Color, 
                         dbo.MkTbl_CurrentINV10.INV5, dbo.MkTbl_CurrentINV10.INV7,MkTbl_CurrentINV10.[Vendor #] AS [Vendor #], MkTbl_CurrentINV10.Vendor AS Vendor, MkTbl_CurrentINV10.[Vendor Style] AS [Vendor Style], MAX(dbo.MkTbl_CurrentINV10.[Original Price]) AS [Original Price], MAX(dbo.MkTbl_CurrentINV10.[Current Price]) AS [Current Price], 
                         MAX(dbo.MkTbl_CurrentINV10.[Current Cost]) AS [Current Cost], SUM(dbo.MkTbl_CurrentINV10.[Current OH Units]) AS [Current OH Units], SUM(dbo.MkTbl_CurrentINV10.[Current OO Units]) AS [Current OO Units], 
                         SUM(dbo.MkTbl_CurrentINV10.[Next 30 Days OO Units]) AS [Next 30 Days OO Units], SUM(dbo.MkTbl_CurrentINV10.[Current Backorder Units]) AS [Current Backorder Units], 
                         SUM(dbo.MkTbl_CurrentINV10.[Current Backorder Cost $]) AS [Current Backorder Cost $], SUM(dbo.MkTbl_CurrentINV10.[Current Backorder $]) AS [Current Backorder $], dbo.MkTbl_ReturnsINV7.[Return %], 
                         MIN(dbo.MkTbl_CurrentINV10.[First Sales Date]) AS [First Sales Date], MIN(dbo.MkTbl_CurrentINV10.[First Receipt Date]) AS [First Receipt Date], MAX(dbo.MkTbl_CurrentINV10.[Last Receipt Date]) AS [Last Receipt Date], 
                         MIN(dbo.MkTbl_CurrentINV10.[Next Receipt Date]) AS [Next Receipt Date]
FROM            dbo.MkTbl_ReturnsINV7 RIGHT OUTER JOIN
                         dbo.MkTbl_CurrentINV10 ON dbo.MkTbl_ReturnsINV7.INV7 = dbo.MkTbl_CurrentINV10.INV7
GROUP BY dbo.MkTbl_CurrentINV10.Category, dbo.MkTbl_CurrentINV10.Division, dbo.MkTbl_CurrentINV10.Department, dbo.MkTbl_CurrentINV10.Class, dbo.MkTbl_CurrentINV10.Style, dbo.MkTbl_CurrentINV10.Color, 
                         dbo.MkTbl_CurrentINV10.INV5, dbo.MkTbl_CurrentINV10.INV7,MkTbl_CurrentINV10.[Vendor #], MkTbl_CurrentINV10.Vendor, MkTbl_CurrentINV10.[Vendor Style] , dbo.MkTbl_ReturnsINV7.[Return %]
GO
