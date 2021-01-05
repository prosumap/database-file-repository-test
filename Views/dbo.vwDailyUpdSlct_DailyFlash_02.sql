SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[vwDailyUpdSlct_DailyFlash_02]
AS
SELECT vwDailyFlash01.[date], 
       vwDailyFlash01.[fiscal wk], 
       vwDailyFlash01.[fiscal month #], 
       vwDailyFlash01.[fiscal month], 
       vwDailyFlash01.[fiscal qtr], 
       vwDailyFlash01.[fiscal year], 
       vwDailyFlash01.[status], 
       vwDailyFlash01.[demand units], 
       vwDailyFlash01.[demand cost $], 
       vwDailyFlash01.[demand $], 
       vwDailyFlash01.[advertised demand $], 
       vwDailyFlash01.[demand $] - vwDailyFlash01.[demand cost $]  AS [Demand Margin $], 
       IIF(vwDailyFlash01.[demand $] > 0, ( vwDailyFlash01.[demand $] - vwDailyFlash01.[demand cost $] ) / vwDailyFlash01.[demand $], 0) AS [Demand Margin %], 
       IIF(vwDailyFlash01.[demand units] > 0, vwDailyFlash01.[demand $] / vwDailyFlash01.[demand units], 0) AS [Demand AUR], 
       IIF(vwDailyFlash01.[demand units] > 0, vwDailyFlash01.[demand cost $] / vwDailyFlash01.[demand units], 0) AS [Demand AUC], 
       vwDailyFlash01.[tax $], 
       Sum(DailyShip.ship_units)  AS [Shipped Units], 
       Sum(DailyShip.[ship_cost$])  AS [Shipped Cost $], 
       Sum(DailyShip.[ship_net$])  AS [Shipped $], 
       Sum(DailyShip.[ship_gross$])  AS [Advertised Shipped $] 
         FROM   dbo.vwDailyUpdSlct_DailyFlash_01 AS vwDailyFlash01 
            LEFT JOIN dbo.mktbl_dailyship  AS DailyShip
              ON ( vwDailyFlash01.[status] = DailyShip.[status] ) 
                 AND ( vwDailyFlash01.[date] = 
                     DailyShip.[ship_date] ) 
GROUP  BY vwDailyFlash01.[date], 
          vwDailyFlash01.[fiscal wk], 
          vwDailyFlash01.[fiscal month #], 
          vwDailyFlash01.[fiscal month], 
          vwDailyFlash01.[fiscal qtr], 
          vwDailyFlash01.[fiscal year], 
          vwDailyFlash01.[status], 
          vwDailyFlash01.[demand units], 
          vwDailyFlash01.[demand cost $], 
          vwDailyFlash01.[demand $], 
          vwDailyFlash01.[advertised demand $], 
          vwDailyFlash01.[demand $] - vwDailyFlash01.[demand cost $], 
          IIF(vwDailyFlash01.[demand $] > 0, ( vwDailyFlash01.[demand $] - vwDailyFlash01.[demand cost $] ) / vwDailyFlash01.[demand $], 0), 
          IIF(vwDailyFlash01.[demand units] > 0, vwDailyFlash01.[demand $] / vwDailyFlash01.[demand units], 0), 
          IIF(vwDailyFlash01.[demand units] > 0, vwDailyFlash01.[demand cost $] / vwDailyFlash01.[demand units], 0), 
          vwDailyFlash01.[tax $]; 
GO
