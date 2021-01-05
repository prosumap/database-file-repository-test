SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[vwDailyUpdSlct_DailyFlash_03]
AS
SELECT vwDailyFlash02.[date], 
       vwDailyFlash02.[fiscal wk], 
       vwDailyFlash02.[fiscal month #], 
       vwDailyFlash02.[fiscal month], 
       vwDailyFlash02.[fiscal qtr], 
       vwDailyFlash02.[fiscal year], 
       vwDailyFlash02.[status], 
       vwDailyFlash02.[demand units], 
       vwDailyFlash02.[demand cost $], 
       vwDailyFlash02.[demand $], 
       vwDailyFlash02.[advertised demand $], 
       vwDailyFlash02.[demand margin $], 
       vwDailyFlash02.[demand margin %], 
       vwDailyFlash02.[demand aur], 
       vwDailyFlash02.[demand auc], 
       vwDailyFlash02.[tax $], 
       Sum(DailyCXL.[cxl_units]) AS [Cancel Units], 
       Sum(DailyCXL.[cxl_cost$]) AS [Cancel Cost $], 
       Sum(DailyCXL.[cxl_net$])  AS [Cancel $], 
       Sum(DailyCXL.[cxl_gross$]) AS [Advertised Cancel $], 
       vwDailyFlash02.[shipped units], 
       vwDailyFlash02.[shipped cost $], 
       vwDailyFlash02.[shipped $], 
       vwDailyFlash02.[advertised shipped $], 
       vwDailyFlash02.[shipped $] - vwDailyFlash02.[shipped cost $] AS [Shipped Margin $], 
       IIF(vwDailyFlash02.[shipped $] > 0, ( vwDailyFlash02.[shipped $] - vwDailyFlash02.[shipped cost $] ) / vwDailyFlash02.[shipped $], 0) AS [Shipped Margin %], 
       IIF(vwDailyFlash02.[shipped units] > 0, vwDailyFlash02.[shipped $] / vwDailyFlash02.[shipped units], 0) AS [Shipped AUR], 
       IIF(vwDailyFlash02.[shipped units] > 0, vwDailyFlash02.[shipped cost $] / vwDailyFlash02.[shipped units], 0) AS [Shipped AUC] 
FROM   dbo.vwDailyUpdSlct_DailyFlash_02 AS vwDailyFlash02
       LEFT JOIN dbo.mktbl_dailycxl AS DailyCXL
              ON ( vwDailyFlash02.[status] = DailyCXL.[status] ) 
                 AND ( vwDailyFlash02.[date] = DailyCXL.[cxl_date] ) 
GROUP  BY vwDailyFlash02.[date], 
          vwDailyFlash02.[fiscal wk], 
          vwDailyFlash02.[fiscal month #], 
          vwDailyFlash02.[fiscal month], 
          vwDailyFlash02.[fiscal qtr], 
          vwDailyFlash02.[fiscal year], 
          vwDailyFlash02.[status], 
          vwDailyFlash02.[demand units], 
          vwDailyFlash02.[demand cost $], 
          vwDailyFlash02.[demand $], 
          vwDailyFlash02.[advertised demand $], 
          vwDailyFlash02.[demand margin $], 
          vwDailyFlash02.[demand margin %], 
          vwDailyFlash02.[demand aur], 
          vwDailyFlash02.[demand auc], 
          vwDailyFlash02.[tax $], 
          vwDailyFlash02.[shipped units], 
          vwDailyFlash02.[shipped cost $], 
          vwDailyFlash02.[shipped $], 
          vwDailyFlash02.[advertised shipped $], 
          vwDailyFlash02.[shipped $] - vwDailyFlash02.[shipped cost $], 
          IIF(vwDailyFlash02.[shipped $] > 0, (vwDailyFlash02.[shipped $] - vwDailyFlash02.[shipped cost $] ) / vwDailyFlash02.[shipped $], 0), 
          IIF(vwDailyFlash02.[shipped units] > 0, vwDailyFlash02.[shipped $] / vwDailyFlash02.[shipped units], 0), 
          IIF(vwDailyFlash02.[shipped units] > 0, vwDailyFlash02.[shipped cost $] / vwDailyFlash02.[shipped units], 0); 
GO
