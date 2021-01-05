SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_PoClsd_3]
as

SELECT vwDailyUpdslct_poclsd_2.catalog, 
       vwDailyUpdslct_poclsd_2.[po #], 
       vwDailyUpdslct_poclsd_2.[req #], 
       vwDailyUpdslct_poclsd_2.ndc, 
       reftbl_calendar.fiscalwk  AS [FISCAL WK], 
       reftbl_calendar.monthno   AS [FISCAL MONTH #], 
       reftbl_calendar.monthdesc AS [FISCAL MONTH], 
       reftbl_calendar.year      AS [FISCAL YEAR], 
       vwDailyUpdslct_poclsd_2.[receipt date], 
       vwDailyUpdslct_poclsd_2.[original ndc], 
       vwDailyUpdslct_poclsd_2.[approved date], 
       vwDailyUpdslct_poclsd_2.[group code], 
       vwDailyUpdslct_poclsd_2.[merch type], 
       vwDailyUpdslct_poclsd_2.[style desc], 
       vwDailyUpdslct_poclsd_2.inv5, 
       vwDailyUpdslct_poclsd_2.[color desc], 
       vwDailyUpdslct_poclsd_2.inv7, 
       vwDailyUpdslct_poclsd_2.[size desc], 
       vwDailyUpdslct_poclsd_2.inv10, 
       vwDailyUpdslct_poclsd_2.[vendor #], 
       vwDailyUpdslct_poclsd_2.vendor, 
       vwDailyUpdslct_poclsd_2.[vendor style #], 
       vwDailyUpdslct_poclsd_2.[cost ea], 
       vwDailyUpdslct_poclsd_2.[po cost], 
       vwDailyUpdslct_poclsd_2.[orig ordered units], 
       vwDailyUpdslct_poclsd_2.[cxl units], 
       vwDailyUpdslct_poclsd_2.[oo units], 
       vwDailyUpdslct_poclsd_2.[oo cost], 
       vwDailyUpdslct_poclsd_2.[received units], 
       vwDailyUpdslct_poclsd_2.[received cost], 
       vwDailyUpdslct_poclsd_2.discounts, 
       vwDailyUpdslct_poclsd_2.terms, 
       vwDailyUpdslct_poclsd_2.[terms desc] 
FROM   vwDailyUpdslct_poclsd_2 
       LEFT JOIN reftbl_calendar 
              ON vwDailyUpdslct_poclsd_2.ndc = reftbl_calendar.date; 
GO
