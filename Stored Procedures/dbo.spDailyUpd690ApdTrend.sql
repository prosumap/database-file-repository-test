SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 6/29/2020
-- Description:	Part of Weekly Update 12 routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd690ApdTrend] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Print 'Started procedure at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMkTbl_TrendINV10
-- 
truncate table MkTbl_TrendINV10
INSERT INTO MkTbl_TrendINV10
                         (Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Original Price], [Current Price], [Current Cost], [Current OH Units], [Next 30 Days OO Units], [Current OO Units], [Current Backorder Units], 
                         [Current Backorder Cost $], [Current Backorder $], [Return %], [Current Event #], [Current Event], [Last Event #], [Last Event], [First Sales Date], [First Receipt Date], [Next Receipt Date], [Last Receipt Date], 
                         [Yesterday Demand Units], [Yesterday Demand Cost $], [Yesterday Demand $], [Yesterday Advertised Demand $], [Yesterday Offered Demand $], [Yesterday Margin $], [Last 7 Days Demand Units], 
                         [Last 7 Days Demand Cost $], [Last 7 Days Demand $], [Last 7 Days Advertised Demand $], [Last 7 Days Offered Demand $], [Last 7 Days Margin $], [Last 14 Days Demand Units], [Last 14 Days Demand Cost $], 
                         [Last 14 Days Demand $], [Last 14 Days Advertised Demand $], [Last 14 Days Offered Demand $], [Last 14 Days Margin $], [Last 30 Days Demand Units], [Last 30 Days Demand Cost $], [Last 30 Days Demand $], 
                         [Last 30 Days Advertised Demand $], [Last 30 Days Offered Demand $], [Last 30 Days Margin $], [Last 60 Days Demand Units], [Last 60 Days Demand Cost $], [Last 60 Days Demand $], [Last 60 Days Advertised Demand $], 
                         [Last 60 Days Offered Demand $], [Last 60 Days Margin $], [Last 90 Days Demand Units], [Last 90 Days Demand Cost $], [Last 90 Days Demand $], [Last 90 Days Advertised Demand $], [Last 90 Days Offered Demand $], 
                         [Last 90 Days Margin $], [Last 365 Days Demand Units], [Last 365 Days Demand Cost $], [Last 365 Days Demand $], [Last 365 Days Advertised Demand $], [Last 365 Days Offered Demand $], [Last 365 Days Margin $])
SELECT        Category, Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, [Original Price], [Current Price], [Current Cost], [Current OH Units], [Next 30 Days OO Units], [Current OO Units], [Current Backorder Units], 
                         [Current Backorder Cost $], [Current Backorder $], [Return %], [Current Event #], [Current Event], [Last Event #], [Last Event], [First Sales Date], [First Receipt Date], [Next Receipt Date], [Last Receipt Date], 
                         0 AS [Yesterday Demand Units], 0 AS [Yesterday Demand Cost $], 0 AS [Yesterday Demand $], 0 AS [Yesterday Advertised Demand $], 0 AS [Yesterday Offered Demand $], 0 AS [Yesterday Margin $], 
                         0 AS [Last 7 Days Demand Units], 0 AS [Last 7 Days Demand Cost $], 0 AS [Last 7 Days Demand $], 0 AS [Last 7 Days Advertised Demand $], 0 AS [Last 7 Days Offered Demand $], 0 AS [Last 7 Days Margin $], 
                         0 AS [Last 14 Days Demand Units], 0 AS [Last 14 Days Demand Cost $], 0 AS [Last 14 Days Demand $], 0 AS [Last 14 Days Advertised Demand $], 0 AS [Last 14 Days Offered Demand $], 0 AS [Last 14 Days Margin $], 
                         0 AS [Last 30 Days Demand Units], 0 AS [Last 30 Days Demand Cost $], 0 AS [Last 30 Days Demand $], 0 AS [Last 30 Days Advertised Demand $], 0 AS [Last 30 Days Offered Demand $], 0 AS [Last 30 Days Margin $], 
                         0 AS [Last 60 Days Demand Units], 0 AS [Last 60 Days Demand Cost $], 0 AS [Last 60 Days Demand $], 0 AS [Last 60 Days Advertised Demand $], 0 AS [Last 60 Days Offered Demand $], 0 AS [Last 60 Days Margin $], 
                         0 AS [Last 90 Days Demand Units], 0 AS [Last 90 Days Demand Cost $], 0 AS [Last 90 Days Demand $], 0 AS [Last 90 Days Advertised Demand $], 0 AS [Last 90 Days Offered Demand $], 0 AS [Last 90 Days Margin $], 
                         0 AS [Last 365 Days Demand Units], 0 AS [Last 365 Days Demand Cost $], 0 AS [Last 365 Days Demand $], 0 AS [Last 365 Days Advertised Demand $], 0 AS [Last 365 Days Offered Demand $], 
                         0 AS [Last 365 Days Margin $]
FROM            MkTbl_CurrentINV10
Print 'Finished appending to MkTbl_TrendINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- Replaces qMkTbl_TrendINV7
-- 
truncate table MkTbl_TrendINV7
INSERT INTO MkTbl_TrendINV7
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, [Original Price], [Current Price], [Current Cost], [Current OH Units], [Next 30 Days OO Units], [Current OO Units], [Current Backorder Units], 
                         [Current Backorder Cost $], [Current Backorder $], [Return %], [Current Event #], [Current Event], [Last Event #], [Last Event], [First Sales Date], [First Receipt Date], [Next Receipt Date], [Last Receipt Date], 
                         [Yesterday Demand Units], [Yesterday Demand Cost $], [Yesterday Demand $], [Yesterday Advertised Demand $], [Yesterday Offered Demand $], [Yesterday Margin $], [Last 7 Days Demand Units], 
                         [Last 7 Days Demand Cost $], [Last 7 Days Demand $], [Last 7 Days Advertised Demand $], [Last 7 Days Offered Demand $], [Last 7 Days Margin $], [Last 14 Days Demand Units], [Last 14 Days Demand Cost $], 
                         [Last 14 Days Demand $], [Last 14 Days Advertised Demand $], [Last 14 Days Offered Demand $], [Last 14 Days Margin $], [Last 30 Days Demand Units], [Last 30 Days Demand Cost $], [Last 30 Days Demand $], 
                         [Last 30 Days Advertised Demand $], [Last 30 Days Offered Demand $], [Last 30 Days Margin $], [Last 60 Days Demand Units], [Last 60 Days Demand Cost $], [Last 60 Days Demand $], [Last 60 Days Advertised Demand $], 
                         [Last 60 Days Offered Demand $], [Last 60 Days Margin $], [Last 90 Days Demand Units], [Last 90 Days Demand Cost $], [Last 90 Days Demand $], [Last 90 Days Advertised Demand $], [Last 90 Days Offered Demand $], 
                         [Last 90 Days Margin $], [Last 365 Days Demand Units], [Last 365 Days Demand Cost $], [Last 365 Days Demand $], [Last 365 Days Advertised Demand $], [Last 365 Days Offered Demand $], [Last 365 Days Margin $])
SELECT        Category, Division, Department, Class, Style, Color, INV5, INV7, [Original Price], [Current Price], [Current Cost], [Current OH Units], [Next 30 Days OO Units], [Current OO Units], [Current Backorder Units], 
                         [Current Backorder Cost $], [Current Backorder $], [Return %], [Current Event #], [Current Event], [Last Event #], [Last Event], [First Sales Date], [First Receipt Date], [Next Receipt Date], [Last Receipt Date], 
                         0 AS [Yesterday Demand Units], 0 AS [Yesterday Demand Cost $], 0 AS [Yesterday Demand $], 0 AS [Yesterday Advertised Demand $], 0 AS [Yesterday Offered Demand $], 0 AS [Yesterday Margin $], 
                         0 AS [Last 7 Days Demand Units], 0 AS [Last 7 Days Demand Cost $], 0 AS [Last 7 Days Demand $], 0 AS [Last 7 Days Advertised Demand $], 0 AS [Last 7 Days Offered Demand $], 0 AS [Last 7 Days Margin $], 
                         0 AS [Last 14 Days Demand Units], 0 AS [Last 14 Days Demand Cost $], 0 AS [Last 14 Days Demand $], 0 AS [Last 14 Days Advertised Demand $], 0 AS [Last 14 Days Offered Demand $], 0 AS [Last 14 Days Margin $], 
                         0 AS [Last 30 Days Demand Units], 0 AS [Last 30 Days Demand Cost $], 0 AS [Last 30 Days Demand $], 0 AS [Last 30 Days Advertised Demand $], 0 AS [Last 30 Days Offered Demand $], 0 AS [Last 30 Days Margin $], 
                         0 AS [Last 60 Days Demand Units], 0 AS [Last 60 Days Demand Cost $], 0 AS [Last 60 Days Demand $], 0 AS [Last 60 Days Advertised Demand $], 0 AS [Last 60 Days Offered Demand $], 0 AS [Last 60 Days Margin $], 
                         0 AS [Last 90 Days Demand Units], 0 AS [Last 90 Days Demand Cost $], 0 AS [Last 90 Days Demand $], 0 AS [Last 90 Days Advertised Demand $], 0 AS [Last 90 Days Offered Demand $], 0 AS [Last 90 Days Margin $], 
                         0 AS [Last 365 Days Demand Units], 0 AS [Last 365 Days Demand Cost $], 0 AS [Last 365 Days Demand $], 0 AS [Last 365 Days Advertised Demand $], 0 AS [Last 365 Days Offered Demand $], 
                         0 AS [Last 365 Days Margin $]
FROM            MkTbl_CurrentINV7
Print 'Finished appending to MkTbl_TrendINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Yesterday - Replaces qMkTbl_YesterdayINV10
-- 
truncate table MkTbl_YesterdayINV10
INSERT INTO MkTbl_YesterdayINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 1 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_YesterdayINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Yesterday - Replaces qUpd_MkTbl_TrendINV10_Yesterday
-- 
UPDATE       MkTbl_TrendINV10
SET                [Yesterday Demand Units] = MkTbl_YesterdayINV10.[Demand Units], [Yesterday Demand Cost $] = MkTbl_YesterdayINV10.[Demand Cost $], [Yesterday Demand $] = MkTbl_YesterdayINV10.[Demand $], 
                         [Yesterday Advertised Demand $] = MkTbl_YesterdayINV10.[Advertised Demand $], [Yesterday Offered Demand $] = MkTbl_YesterdayINV10.[Offered Demand $], 
                         [Yesterday Margin $] = MkTbl_YesterdayINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_YesterdayINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_YesterdayINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with yesterday at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Yesterday - Replaces qMkTbl_YesterdayINV7
-- 
truncate table MkTbl_YesterdayINV7
INSERT INTO MkTbl_YesterdayINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_YesterdayINV10
GROUP BY INV7
Print 'Finished appending to MkTbl_YesterdayINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Yesterday - Replaces qUpd_MkTbl_TrendINV7_Yesterday
-- 
UPDATE       MkTbl_TrendINV7
SET                [Yesterday Demand Units] = MkTbl_YesterdayINV7.[Demand Units], [Yesterday Demand Cost $] = MkTbl_YesterdayINV7.[Demand Cost $], [Yesterday Demand $] = MkTbl_YesterdayINV7.[Demand $], 
                         [Yesterday Advertised Demand $] = MkTbl_YesterdayINV7.[Advertised Demand $], [Yesterday Offered Demand $] = MkTbl_YesterdayINV7.[Offered Demand $], 
                         [Yesterday Margin $] = MkTbl_YesterdayINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_YesterdayINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_YesterdayINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with yesterday at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 7 Days - Replaces qMkTbl_Last7DaysINV10
-- 
truncate table MkTbl_Last7DaysINV10
INSERT INTO MkTbl_Last7DaysINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 7 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_Last7DaysINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 7 Days - Replaces qUpd_MkTbl_TrendINV10_Last7Days
-- 
UPDATE       MkTbl_TrendINV10
SET                [Last 7 Days Demand Units] = MkTbl_Last7DaysINV10.[Demand Units], [Last 7 Days Demand Cost $] = MkTbl_Last7DaysINV10.[Demand Cost $], [Last 7 Days Demand $] = MkTbl_Last7DaysINV10.[Demand $], 
                         [Last 7 Days Advertised Demand $] = MkTbl_Last7DaysINV10.[Advertised Demand $], [Last 7 Days Offered Demand $] = MkTbl_Last7DaysINV10.[Offered Demand $], 
                         [Last 7 Days Margin $] = MkTbl_Last7DaysINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_Last7DaysINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_Last7DaysINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with last 7 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 7 Days - Replaces qMkTbl_Last7DaysINV7
-- 
truncate table MkTbl_Last7DaysINV7
INSERT INTO MkTbl_Last7DaysINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_Last7DaysINV10
GROUP BY INV7
Print 'Finished appending to MkTbl_Last7DaysINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 7 Days - Replaces qUpd_MkTbl_TrendINV7_Last7Days
-- 
UPDATE       MkTbl_TrendINV7
SET                [Last 7 Days Demand Units] = MkTbl_Last7DaysINV7.[Demand Units], [Last 7 Days Demand Cost $] = MkTbl_Last7DaysINV7.[Demand Cost $], [Last 7 Days Demand $] = MkTbl_Last7DaysINV7.[Demand $], 
                         [Last 7 Days Advertised Demand $] = MkTbl_Last7DaysINV7.[Advertised Demand $], [Last 7 Days Offered Demand $] = MkTbl_Last7DaysINV7.[Offered Demand $], 
                         [Last 7 Days Margin $] = MkTbl_Last7DaysINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_Last7DaysINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_Last7DaysINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with last 7 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 14 Days - Replaces qMkTbl_Last14DaysINV10
-- 
truncate table MkTbl_Last14DaysINV10
INSERT INTO MkTbl_Last14DaysINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 14 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_Last14DaysINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 14 Days - Replaces qUpd_MkTbl_TrendINV10_Last14Days
-- 
UPDATE       MkTbl_TrendINV10
SET                [Last 14 Days Demand Units] = MkTbl_Last14DaysINV10.[Demand Units], [Last 14 Days Demand Cost $] = MkTbl_Last14DaysINV10.[Demand Cost $], [Last 14 Days Demand $] = MkTbl_Last14DaysINV10.[Demand $], 
                         [Last 14 Days Advertised Demand $] = MkTbl_Last14DaysINV10.[Advertised Demand $], [Last 14 Days Offered Demand $] = MkTbl_Last14DaysINV10.[Offered Demand $], 
                         [Last 14 Days Margin $] = MkTbl_Last14DaysINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_Last14DaysINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_Last14DaysINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with last 14 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 14 Days - Replaces qMkTbl_Last14DaysINV7
-- 
truncate table MkTbl_Last14DaysINV7
INSERT INTO MkTbl_Last14DaysINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_Last14DaysINV10
GROUP BY INV7
Print 'Finished appending to MkTbl_Last14DaysINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 14 Days - Replaces qUpd_MkTbl_TrendINV7_Last14Days
-- 
UPDATE       MkTbl_TrendINV7
SET                [Last 14 Days Demand Units] = MkTbl_Last14DaysINV7.[Demand Units], [Last 14 Days Demand Cost $] = MkTbl_Last14DaysINV7.[Demand Cost $], [Last 14 Days Demand $] = MkTbl_Last14DaysINV7.[Demand $], 
                         [Last 14 Days Advertised Demand $] = MkTbl_Last14DaysINV7.[Advertised Demand $], [Last 14 Days Offered Demand $] = MkTbl_Last14DaysINV7.[Offered Demand $], 
                         [Last 14 Days Margin $] = MkTbl_Last14DaysINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_Last14DaysINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_Last14DaysINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with last 14 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 30 Days - Replaces qMkTbl_Last30DaysINV10
-- 
truncate table MkTbl_Last30DaysINV10
INSERT INTO MkTbl_Last30DaysINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 30 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_Last30DaysINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 30 Days - Replaces qUpd_MkTbl_TrendINV10_Last30Days
-- 
UPDATE       MkTbl_TrendINV10
SET                [Last 30 Days Demand Units] = MkTbl_Last30DaysINV10.[Demand Units], [Last 30 Days Demand Cost $] = MkTbl_Last30DaysINV10.[Demand Cost $], [Last 30 Days Demand $] = MkTbl_Last30DaysINV10.[Demand $], 
                         [Last 30 Days Advertised Demand $] = MkTbl_Last30DaysINV10.[Advertised Demand $], [Last 30 Days Offered Demand $] = MkTbl_Last30DaysINV10.[Offered Demand $], 
                         [Last 30 Days Margin $] = MkTbl_Last30DaysINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_Last30DaysINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_Last30DaysINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with last 30 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 30 Days - Replaces qMkTbl_Last30DaysINV7
-- 
truncate table MkTbl_Last30DaysINV7
INSERT INTO MkTbl_Last30DaysINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_Last30DaysINV10
GROUP BY INV7
Print 'Finished appending to MkTbl_Last30DaysINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 30 Days - Replaces qUpd_MkTbl_TrendINV7_Last30Days
-- 
UPDATE       MkTbl_TrendINV7
SET                [Last 30 Days Demand Units] = MkTbl_Last30DaysINV7.[Demand Units], [Last 30 Days Demand Cost $] = MkTbl_Last30DaysINV7.[Demand Cost $], [Last 30 Days Demand $] = MkTbl_Last30DaysINV7.[Demand $], 
                         [Last 30 Days Advertised Demand $] = MkTbl_Last30DaysINV7.[Advertised Demand $], [Last 30 Days Offered Demand $] = MkTbl_Last30DaysINV7.[Offered Demand $], 
                         [Last 30 Days Margin $] = MkTbl_Last30DaysINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_Last30DaysINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_Last30DaysINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with last 30 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 60 Days - Replaces qMkTbl_Last60DaysINV10
-- 
truncate table MkTbl_Last60DaysINV10
INSERT INTO MkTbl_Last60DaysINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 60 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_Last60DaysINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 60 Days - Replaces qUpd_MkTbl_TrendINV10_Last60Days
-- 
UPDATE       MkTbl_TrendINV10
SET                [Last 60 Days Demand Units] = MkTbl_Last60DaysINV10.[Demand Units], [Last 60 Days Demand Cost $] = MkTbl_Last60DaysINV10.[Demand Cost $], [Last 60 Days Demand $] = MkTbl_Last60DaysINV10.[Demand $], 
                         [Last 60 Days Advertised Demand $] = MkTbl_Last60DaysINV10.[Advertised Demand $], [Last 60 Days Offered Demand $] = MkTbl_Last60DaysINV10.[Offered Demand $], 
                         [Last 60 Days Margin $] = MkTbl_Last60DaysINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_Last60DaysINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_Last60DaysINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with last 60 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 60 Days - Replaces qMkTbl_Last60DaysINV7
-- 
truncate table MkTbl_Last60DaysINV7
INSERT INTO MkTbl_Last60DaysINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_Last60DaysINV10
GROUP BY INV7
Print 'Finished appending to MkTbl_Last60DaysINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 60 Days - Replaces qUpd_MkTbl_TrendINV7_Last60Days
-- 
UPDATE       MkTbl_TrendINV7
SET                [Last 60 Days Demand Units] = MkTbl_Last60DaysINV7.[Demand Units], [Last 60 Days Demand Cost $] = MkTbl_Last60DaysINV7.[Demand Cost $], [Last 60 Days Demand $] = MkTbl_Last60DaysINV7.[Demand $], 
                         [Last 60 Days Advertised Demand $] = MkTbl_Last60DaysINV7.[Advertised Demand $], [Last 60 Days Offered Demand $] = MkTbl_Last60DaysINV7.[Offered Demand $], 
                         [Last 60 Days Margin $] = MkTbl_Last60DaysINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_Last60DaysINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_Last60DaysINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with last 60 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 90 Days - Replaces qMkTbl_Last90DaysINV10
-- 
truncate table MkTbl_Last90DaysINV10
INSERT INTO MkTbl_Last90DaysINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 90 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_Last90DaysINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 90 Days - Replaces qUpd_MkTbl_TrendINV10_Last90Days
-- 
UPDATE       MkTbl_TrendINV10
SET                [Last 90 Days Demand Units] = MkTbl_Last90DaysINV10.[Demand Units], [Last 90 Days Demand Cost $] = MkTbl_Last90DaysINV10.[Demand Cost $], [Last 90 Days Demand $] = MkTbl_Last90DaysINV10.[Demand $], 
                         [Last 90 Days Advertised Demand $] = MkTbl_Last90DaysINV10.[Advertised Demand $], [Last 90 Days Offered Demand $] = MkTbl_Last90DaysINV10.[Offered Demand $], 
                         [Last 90 Days Margin $] = MkTbl_Last90DaysINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_Last90DaysINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_Last90DaysINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with last 90 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 90 Days - Replaces qMkTbl_Last90DaysINV7
-- 
truncate table MkTbl_Last90DaysINV7
INSERT INTO MkTbl_Last90DaysINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_Last90DaysINV10
GROUP BY INV7
Print 'Finished appending to MkTbl_Last90DaysINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 90 Days - Replaces qUpd_MkTbl_TrendINV7_Last90Days
-- 
UPDATE       MkTbl_TrendINV7
SET                [Last 90 Days Demand Units] = MkTbl_Last90DaysINV7.[Demand Units], [Last 90 Days Demand Cost $] = MkTbl_Last90DaysINV7.[Demand Cost $], [Last 90 Days Demand $] = MkTbl_Last90DaysINV7.[Demand $], 
                         [Last 90 Days Advertised Demand $] = MkTbl_Last90DaysINV7.[Advertised Demand $], [Last 90 Days Offered Demand $] = MkTbl_Last90DaysINV7.[Offered Demand $], 
                         [Last 90 Days Margin $] = MkTbl_Last90DaysINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_Last90DaysINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_Last90DaysINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with last 90 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 365 Days - Replaces qMkTbl_Last365DaysINV10
-- 
truncate table MkTbl_Last365DaysINV10
INSERT INTO MkTbl_Last365DaysINV10
                         (INV7, INV10, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, INV10, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_FiscalHindsightINV10
WHERE        (Date >= CAST(GETDATE() - 365 AS date))
GROUP BY INV7, INV10
Print 'Finished appending to MkTbl_Last90DaysINV10 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV10 Last 365 Days - Replaces qUpd_MkTbl_TrendINV10_Last365Days
-- 
UPDATE       MkTbl_TrendINV10
SET                [Last 365 Days Demand Units] = MkTbl_Last365DaysINV10.[Demand Units], [Last 365 Days Demand Cost $] = MkTbl_Last365DaysINV10.[Demand Cost $], [Last 365 Days Demand $] = MkTbl_Last365DaysINV10.[Demand $], 
                         [Last 365 Days Advertised Demand $] = MkTbl_Last365DaysINV10.[Advertised Demand $], [Last 365 Days Offered Demand $] = MkTbl_Last365DaysINV10.[Offered Demand $], 
                         [Last 365 Days Margin $] = MkTbl_Last365DaysINV10.[Demand Margin $]
FROM            MkTbl_TrendINV10 INNER JOIN
                         MkTbl_Last365DaysINV10 ON MkTbl_TrendINV10.INV10 = MkTbl_Last365DaysINV10.INV10
Print 'Finished updating MkTbl_TrendINV10 with last 365 days at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 365 Days - Replaces qMkTbl_Last365DaysINV7
-- 
truncate table MkTbl_Last365DaysINV7
INSERT INTO MkTbl_Last365DaysINV7
                         (INV7, [Demand Units], [Demand Cost $], [Demand $], [Advertised Demand $], [Offered Demand $], [Demand Margin $])
SELECT        INV7, SUM([Demand Units]) AS [Demand Units], SUM([Demand Cost $]) AS [Demand Cost $], SUM([Demand $]) AS [Demand $], SUM([Advertised Demand $]) AS [Advertised Demand $], SUM([Offered Demand $]) 
                         AS [Offered Demand $], SUM([Demand Margin $]) AS [Demand Margin $]
FROM            MkTbl_Last365DaysINV10
GROUP BY INV7
Print 'Finished appending to qMkTbl_Last365DaysINV7 at ' + CONVERT(varchar(10),  getdate(), 24)

-- INV7 Last 365 Days - Replaces 
-- 
UPDATE       MkTbl_TrendINV7
SET                [Last 365 Days Demand Units] = MkTbl_Last365DaysINV7.[Demand Units], [Last 365 Days Demand Cost $] = MkTbl_Last365DaysINV7.[Demand Cost $], [Last 365 Days Demand $] = MkTbl_Last365DaysINV7.[Demand $], 
                         [Last 365 Days Advertised Demand $] = MkTbl_Last365DaysINV7.[Advertised Demand $], [Last 365 Days Offered Demand $] = MkTbl_Last365DaysINV7.[Offered Demand $], 
                         [Last 365 Days Margin $] = MkTbl_Last365DaysINV7.[Demand Margin $]
FROM            MkTbl_TrendINV7 INNER JOIN
                         MkTbl_Last365DaysINV7 ON MkTbl_TrendINV7.INV7 = MkTbl_Last365DaysINV7.INV7
Print 'Finished updating MkTbl_TrendINV7 with last 365 days at ' + CONVERT(varchar(10),  getdate(), 24)

END
GO
