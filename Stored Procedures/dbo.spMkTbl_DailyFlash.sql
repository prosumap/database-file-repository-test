SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE   procedure [dbo].[spMkTbl_DailyFlash]
AS
IF OBJECT_ID(N'dbo.mktbl_dailyflash', N'U') IS NOT NULL
Begin
drop table dbo.mktbl_dailyflash;
end
SELECT Calendar.[date], 
       Calendar.[fiscalwk]  AS [Fiscal Week], 
       Calendar.[monthno]   AS [Fiscal Month #], 
       Calendar.[monthdesc] AS [Fiscal Month], 
       Calendar.[qtr]       AS [Fiscal Qtr], 
       Calendar.[year]      AS [Fiscal Year], 
       DailyFlash09.[# orders], 
       DailyFlash09.[demand units], 
       DailyFlash09.[demand cost $], 
       DailyFlash09.[demand $], 
       DailyFlash09.[advertised demand $], 
       DailyFlash09.[demand margin $], 
       DailyFlash09.[demand margin %], 
       DailyFlash09.[demand aur], 
       DailyFlash09.[demand auc], 
       DailyFlash09.[demand tax $], 
       DailyFlash09.[demand shipping revenue $], 
       DailyFlash09.[cancel units], 
       DailyFlash09.[cancel cost $], 
       DailyFlash09.[cancel $], 
       DailyFlash09.[advertised cancel $], 
       DailyFlash09.[cancel margin $], 
       DailyFlash09.[cancel margin %], 
       DailyFlash09.[shipped units], 
       DailyFlash09.[shipped cost $], 
       DailyFlash09.[shipped $], 
       DailyFlash09.[advertised shipped $], 
       DailyFlash09.[shipped margin $], 
       DailyFlash09.[shipped margin %], 
       DailyFlash09.[shipped aur], 
       DailyFlash09.[shipped auc], 
       DailyFlash09.[shipped shipping revenue $], 
       DailyFlash09.[returned units], 
       DailyFlash09.[returned cost $], 
       DailyFlash09.[returned $], 
       DailyFlash09.[advertised returned $], 
       DailyFlash09.[returned margin $] 
INTO   dbo.mktbl_dailyflash 
FROM   dbo.vwDailyUpdSlct_DailyFlash_09 AS DailyFlash09 
       RIGHT JOIN dbo.reftbl_calendar AS Calendar 
                 ON DailyFlash09.[date] = Calendar.[date] 
WHERE  (( ( Calendar.[year] ) >= 2017 )); 



GO
