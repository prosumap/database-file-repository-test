SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view  [dbo].[vwDailyUpdSlct_DailyFlash_07]
as
SELECT dailyflashdetail.[date], 
       dailyflashdetail.[fiscal week], 
       dailyflashdetail.[fiscal month #], 
       dailyflashdetail.[fiscal month], 
       dailyflashdetail.[fiscal qtr], 
       dailyflashdetail.[fiscal year], 
       Sum(dailyflashdetail.[demand units])          AS [Demand Units], 
       Sum(dailyflashdetail.[demand cost $])         AS [Demand Cost $], 
       Sum(dailyflashdetail.[demand $])              AS [Demand $], 
       Sum(dailyflashdetail.[advertised demand $])   AS [Advertised Demand $], 
       Sum(dailyflashdetail.[demand margin $])       AS [Demand Margin $], 
       Sum(dailyflashdetail.[demand tax $])          AS [Demand Tax $], 
       Sum(dailyflashdetail.[cancel units])          AS [Cancel Units], 
       Sum(dailyflashdetail.[cancel cost $])         AS [Cancel Cost $], 
       Sum(dailyflashdetail.[cancel $])              AS [Cancel $], 
       Sum(dailyflashdetail.[advertised cancel $])   AS [Advertised Cancel $], 
       Sum(dailyflashdetail.[cancel margin $])       AS [Cancel Margin $], 
       Sum(dailyflashdetail.[shipped units])         AS [Shipped Units], 
       Sum(dailyflashdetail.[shipped cost $])        AS [Shipped Cost $], 
       Sum(dailyflashdetail.[shipped $])             AS [Shipped $], 
       Sum(dailyflashdetail.[advertised shipped $])  AS [Advertised Shipped $], 
       Sum(dailyflashdetail.[shipped margin $])      AS [Shipped Margin $] , 
       Sum(dailyflashdetail.[returned units])        AS [Returned Units], 
       Sum(dailyflashdetail.[returned cost $])       AS [Returned Cost $], 
       Sum(dailyflashdetail.[returned $])            AS [Returned $], 
       Sum(dailyflashdetail.[advertised returned $]) AS [Advertised Returned $], 
       Sum(dailyflashdetail.[returned margin $])     AS [Returned Margin $] 
FROM   dbo.mktbl_dailyflashdetail AS dailyflashdetail 
GROUP  BY dailyflashdetail.[date], 
          dailyflashdetail.[fiscal week], 
          dailyflashdetail.[fiscal month #], 
          dailyflashdetail.[fiscal month], 
          dailyflashdetail.[fiscal qtr], 
          dailyflashdetail.[fiscal year]; 
GO
