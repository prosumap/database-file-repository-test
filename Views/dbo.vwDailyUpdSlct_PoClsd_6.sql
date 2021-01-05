SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_PoClsd_6]
as
SELECT vwDailyUpdslct_poclsd_5.catalog, 
       vwDailyUpdslct_poclsd_5.[catalog desc], 
       vwDailyUpdslct_poclsd_5.[po #], 
       vwDailyUpdslct_poclsd_5.[req #], 
       vwDailyUpdslct_poclsd_5.ndc, 
       vwDailyUpdslct_poclsd_5.[fiscal wk], 
       vwDailyUpdslct_poclsd_5.[fiscal month #], 
       vwDailyUpdslct_poclsd_5.[fiscal month], 
       vwDailyUpdslct_poclsd_5.[fiscal year], 
       vwDailyUpdslct_poclsd_5.[receipt date], 
       vwDailyUpdslct_poclsd_5.[original ndc], 
       vwDailyUpdslct_poclsd_5.[approved date], 
       vwDailyUpdslct_poclsd_5.[group code], 
       vwDailyUpdslct_poclsd_5.[merch type], 
       vwDailyUpdslct_poclsd_5.[style desc], 
       vwDailyUpdslct_poclsd_5.inv5, 
       vwDailyUpdslct_poclsd_5.[color desc], 
       vwDailyUpdslct_poclsd_5.inv7, 
       vwDailyUpdslct_poclsd_5.[size desc], 
       vwDailyUpdslct_poclsd_5.inv10, 
       vwDailyUpdslct_poclsd_5.[vendor #], 
       vwDailyUpdslct_poclsd_5.vendor, 
       vwDailyUpdslct_poclsd_5.[vendor style #], 
       vwDailyUpdslct_poclsd_5.[cost ea], 
       vwDailyUpdslct_poclsd_5.[po cost], 
       vwDailyUpdslct_poclsd_5.[orig ordered units], 
       vwDailyUpdslct_poclsd_5.[cxl units], 
       vwDailyUpdslct_poclsd_5.[oo units], 
       vwDailyUpdslct_poclsd_5.[oo cost], 
       vwDailyUpdslct_poclsd_5.[received units], 
       vwDailyUpdslct_poclsd_5.[received cost], 
       vwDailyUpdslct_poclsd_5.discounts, 
       vwDailyUpdslct_chrgbk.chargeback, 
       vwDailyUpdslct_poclsd_5.terms, 
       vwDailyUpdslct_poclsd_5.[terms desc] 
FROM   vwDailyUpdslct_poclsd_5 
       LEFT JOIN vwDailyUpdslct_chrgbk 
              ON vwDailyUpdslct_poclsd_5.[po #] = vwDailyUpdslct_chrgbk.[po #]; 
GO
