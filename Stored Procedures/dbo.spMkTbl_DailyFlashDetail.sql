SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE   procedure [dbo].[spMkTbl_DailyFlashDetail]
AS
IF OBJECT_ID(N'dbo.mktbl_dailyflashdetail', N'U') IS NOT NULL
Begin
drop table dbo.mktbl_dailyflashdetail;
end

SELECT Calendar.[date], 
       Calendar.[fiscalwk]   AS [Fiscal Week], 
       Calendar.[monthno]   AS [Fiscal Month #], 
       Calendar.[monthdesc]  AS [Fiscal Month], 
       Calendar.[qtr]   AS [Fiscal Qtr], 
       Calendar.[year] AS [Fiscal Year], 
       dailyflash05.[status], 
       dailyflash05.[demand units], 
       dailyflash05.[demand cost $], 
       dailyflash05.[demand $], 
       dailyflash05.[advertised demand $], 
       dailyflash05.[demand margin $], 
       dailyflash05.[demand margin %], 
       dailyflash05.[demand aur], 
       dailyflash05.[demand auc], 
       dailyflash05.[tax $] AS [Demand Tax $], 
       dailyflash05.[cancel units], 
       dailyflash05.[cancel cost $], 
       dailyflash05.[cancel $], 
       dailyflash05.[advertised cancel $], 
       dailyflash05.[cancel margin $], 
       dailyflash05.[cancel margin %], 
       dailyflash05.[shipped units], 
       dailyflash05.[shipped cost $], 
       dailyflash05.[shipped $], 
       dailyflash05.[advertised shipped $], 
       dailyflash05.[shipped margin $], 
       dailyflash05.[shipped margin %], 
       dailyflash05.[shipped aur], 
       dailyflash05.[shipped auc], 
       dailyflash05.[return units] + dailyflash05.[exchange units]  AS [Returned Units], 
       dailyflash05.[return cost $] + dailyflash05.[exchange cost $]  AS [Returned Cost $], 
       dailyflash05.[return $] + dailyflash05.[exchange $]  AS [Returned $], 
       dailyflash05.[advertised return $]  + dailyflash05.[advertised exchange $] AS [Advertised Returned $], 
       dailyflash05.[return $] + dailyflash05.[exchange $] - dailyflash05.[return cost $] - dailyflash05.[exchange cost $] AS [Returned Margin $] 
INTO   dbo.mktbl_dailyflashdetail 
FROM   dbo.vwDailyUpdslct_dailyflash_05 AS dailyflash05 
       RIGHT JOIN dbo.reftbl_calendar AS Calendar 
               ON dailyflash05.[date] = Calendar.[date] 
WHERE  (( ( Calendar.[year] ) >= 2017 )); 






GO
