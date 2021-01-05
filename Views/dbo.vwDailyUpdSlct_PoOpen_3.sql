SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_3]
as
SELECT vwDailyUpdslct_poopen_2.catalog, 
       vwDailyUpdslct_poopen_2.[po #], 
       vwDailyUpdslct_poopen_2.[req #], 
       vwDailyUpdslct_poopen_2.ndc, 
       vwDailyUpdslct_poopen_2.[receipt date], 
       reftbl_calendar.fiscalwk  AS [FISCAL WK], 
       reftbl_calendar.monthno   AS [FISCAL MONTH #], 
       reftbl_calendar.monthdesc AS [FISCAL MONTH], 
       reftbl_calendar.year      AS [FISCAL YEAR], 
       vwDailyUpdslct_poopen_2.[original ndc], 
       vwDailyUpdslct_poopen_2.[approved date], 
       vwDailyUpdslct_poopen_2.[group code], 
       vwDailyUpdslct_poopen_2.[merch type], 
       vwDailyUpdslct_poopen_2.[style desc], 
       vwDailyUpdslct_poopen_2.inv5, 
       vwDailyUpdslct_poopen_2.[color desc], 
       vwDailyUpdslct_poopen_2.inv7, 
       vwDailyUpdslct_poopen_2.[size desc], 
       vwDailyUpdslct_poopen_2.inv10, 
       vwDailyUpdslct_poopen_2.[vendor #], 
       vwDailyUpdslct_poopen_2.vendor, 
       vwDailyUpdslct_poopen_2.[vendor style #], 
       vwDailyUpdslct_poopen_2.[cost ea], 
       vwDailyUpdslct_poopen_2.[po cost], 
       vwDailyUpdslct_poopen_2.[orig ordered units], 
       vwDailyUpdslct_poopen_2.[cxl units], 
       vwDailyUpdslct_poopen_2.[oo units], 
       vwDailyUpdslct_poopen_2.[oo cost], 
       vwDailyUpdslct_poopen_2.[received units], 
       vwDailyUpdslct_poopen_2.[received cost], 
       vwDailyUpdslct_poopen_2.discounts, 
       vwDailyUpdslct_poopen_2.terms, 
       vwDailyUpdslct_poopen_2.[terms desc] 
FROM   vwDailyUpdslct_poopen_2 
       LEFT JOIN reftbl_calendar 
              ON vwDailyUpdslct_poopen_2.ndc = reftbl_calendar.date; 
GO
