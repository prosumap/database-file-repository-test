SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_6]
as
SELECT vwDailyUpdslct_poopen_5.catalog, 
       vwDailyUpdslct_poopen_5.[catalog desc], 
       vwDailyUpdslct_poopen_5.[po #], 
       vwDailyUpdslct_poopen_5.[req #], 
       vwDailyUpdslct_poopen_5.ndc, 
       vwDailyUpdslct_poopen_5.[fiscal wk], 
       vwDailyUpdslct_poopen_5.[fiscal month #], 
       vwDailyUpdslct_poopen_5.[fiscal month], 
       vwDailyUpdslct_poopen_5.[fiscal year], 
       vwDailyUpdslct_poopen_5.[receipt date], 
       vwDailyUpdslct_poopen_5.[original ndc], 
       vwDailyUpdslct_poopen_5.[approved date], 
       vwDailyUpdslct_poopen_5.[group code], 
       vwDailyUpdslct_poopen_5.[merch type], 
       vwDailyUpdslct_poopen_5.[style desc], 
       vwDailyUpdslct_poopen_5.inv5, 
       vwDailyUpdslct_poopen_5.[color desc], 
       vwDailyUpdslct_poopen_5.inv7, 
       vwDailyUpdslct_poopen_5.[size desc], 
       vwDailyUpdslct_poopen_5.inv10, 
       vwDailyUpdslct_poopen_5.[vendor #], 
       vwDailyUpdslct_poopen_5.vendor, 
       vwDailyUpdslct_poopen_5.[vendor style #], 
       vwDailyUpdslct_poopen_5.[cost ea], 
       vwDailyUpdslct_poopen_5.[po cost], 
       vwDailyUpdslct_poopen_5.[orig ordered units], 
       vwDailyUpdslct_poopen_5.[cxl units], 
       vwDailyUpdslct_poopen_5.[oo units], 
       vwDailyUpdslct_poopen_5.[oo cost], 
       vwDailyUpdslct_poopen_5.[received units], 
       vwDailyUpdslct_poopen_5.[received cost], 
       vwDailyUpdslct_poopen_5.discounts, 
       vwDailyUpdslct_chrgbk.chargeback, 
       vwDailyUpdslct_poopen_5.terms, 
       vwDailyUpdslct_poopen_5.[terms desc] 
FROM   vwDailyUpdslct_poopen_5 
       LEFT JOIN vwDailyUpdslct_chrgbk 
              ON vwDailyUpdslct_poopen_5.[po #] = vwDailyUpdslct_chrgbk.[po #]; 


	
GO
