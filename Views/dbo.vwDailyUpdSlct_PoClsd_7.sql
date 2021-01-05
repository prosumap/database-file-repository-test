SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_PoClsd_7]
as
SELECT vwDailyUpdslct_poclsd_6.catalog, 
       vwDailyUpdslct_poclsd_6.[catalog desc], 
       vwDailyUpdslct_poclsd_6.[po #], 
       vwDailyUpdslct_poclsd_6.[req #], 
       vwDailyUpdslct_poclsd_6.ndc, 
       vwDailyUpdslct_poclsd_6.[fiscal wk], 
       vwDailyUpdslct_poclsd_6.[fiscal month #], 
       vwDailyUpdslct_poclsd_6.[fiscal month], 
       vwDailyUpdslct_poclsd_6.[fiscal year], 
       vwDailyUpdslct_poclsd_6.[receipt date], 
       vwDailyUpdslct_poclsd_6.[original ndc], 
       vwDailyUpdslct_poclsd_6.[approved date], 
       vwDailyUpdslct_poclsd_6.[group code], 
       vwDailyUpdslct_poclsd_6.[merch type], 
       vwDailyUpdslct_poclsd_6.[style desc], 
       vwDailyUpdslct_poclsd_6.inv5, 
       vwDailyUpdslct_poclsd_6.[color desc], 
       vwDailyUpdslct_poclsd_6.inv7, 
       vwDailyUpdslct_poclsd_6.[size desc], 
       vwDailyUpdslct_poclsd_6.inv10, 
       vwDailyUpdslct_poclsd_6.[vendor #], 
       vwDailyUpdslct_poclsd_6.vendor, 
       vwDailyUpdslct_poclsd_6.[vendor style #], 
       vwDailyUpdslct_poclsd_6.[cost ea], 
       vwDailyUpdslct_poclsd_6.[po cost], 
       vwDailyUpdslct_poclsd_6.[orig ordered units], 
       vwDailyUpdslct_poclsd_6.[cxl units], 
       vwDailyUpdslct_poclsd_6.[oo units], 
       vwDailyUpdslct_poclsd_6.[oo cost], 
       vwDailyUpdslct_poclsd_6.[received units], 
       vwDailyUpdslct_poclsd_6.[received cost], 
       vwDailyUpdslct_disc.discounts, 
       vwDailyUpdslct_poclsd_6.chargeback, 
       vwDailyUpdslct_poclsd_6.terms, 
       vwDailyUpdslct_poclsd_6.[terms desc] 
FROM   vwDailyUpdslct_poclsd_6 
       LEFT JOIN vwDailyUpdslct_disc 
              ON vwDailyUpdslct_poclsd_6.[po #] = vwDailyUpdslct_disc.[po #]; 
GO
