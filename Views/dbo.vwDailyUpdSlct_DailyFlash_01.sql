SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[vwDailyUpdSlct_DailyFlash_01]
AS
SELECT dailyorder.[item date]                AS [Date], 
       dailyorder.[ordered fiscal wk]        AS [Fiscal Wk], 
       dailyorder.[ordered fiscal month #]   AS [Fiscal Month #], 
       dailyorder.[ordered fiscal month]     AS [Fiscal Month], 
       dailyorder.[ordered fiscal qtr]       AS [Fiscal Qtr], 
       dailyorder.[ordered fiscal year]      AS [Fiscal Year], 
       IIf(LEFT([event #], 1) = '2', 'md', 'fp')   AS [Status], 
       Sum(dailyorder.[demand units])        AS [Demand Units], 
       Sum(dailyorder.[demand cost $])       AS [Demand Cost $], 
       Sum(dailyorder.[demand $])            AS [Demand $], 
       Sum(dailyorder.[advertised demand $]) AS [Advertised Demand $], 
       Sum(dailyorder.[tax $])               AS [Tax $] 
FROM   dbo.mktbl_dailyorder AS dailyorder
GROUP  BY dailyorder.[item date], 
          dailyorder.[ordered fiscal wk], 
          dailyorder.[ordered fiscal month #], 
          dailyorder.[ordered fiscal month], 
          dailyorder.[ordered fiscal qtr], 
          dailyorder.[ordered fiscal year], 
          IIf(LEFT([event #], 1) = '2', 'md', 'fp'); 
GO
