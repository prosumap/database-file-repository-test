SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_PoClsd_4]
as

SELECT vwDailyUpdslct_poclsd_3.catalog, 
       f21_fmkt_offer.description AS [CATALOG DESC], 
       vwDailyUpdslct_poclsd_3.[po #], 
       vwDailyUpdslct_poclsd_3.[req #], 
       vwDailyUpdslct_poclsd_3.ndc, 
       vwDailyUpdslct_poclsd_3.[fiscal wk], 
       vwDailyUpdslct_poclsd_3.[fiscal month #], 
       vwDailyUpdslct_poclsd_3.[fiscal month], 
       vwDailyUpdslct_poclsd_3.[fiscal year], 
       vwDailyUpdslct_poclsd_3.[receipt date], 
       vwDailyUpdslct_poclsd_3.[original ndc], 
       vwDailyUpdslct_poclsd_3.[approved date], 
       vwDailyUpdslct_poclsd_3.[group code], 
       vwDailyUpdslct_poclsd_3.[merch type], 
       vwDailyUpdslct_poclsd_3.[style desc], 
       vwDailyUpdslct_poclsd_3.inv5, 
       vwDailyUpdslct_poclsd_3.[color desc], 
       vwDailyUpdslct_poclsd_3.inv7, 
       vwDailyUpdslct_poclsd_3.[size desc], 
       vwDailyUpdslct_poclsd_3.inv10, 
       vwDailyUpdslct_poclsd_3.[vendor #], 
       vwDailyUpdslct_poclsd_3.vendor, 
       vwDailyUpdslct_poclsd_3.[vendor style #], 
       vwDailyUpdslct_poclsd_3.[cost ea], 
       vwDailyUpdslct_poclsd_3.[po cost], 
       vwDailyUpdslct_poclsd_3.[orig ordered units], 
       vwDailyUpdslct_poclsd_3.[cxl units], 
       vwDailyUpdslct_poclsd_3.[oo units], 
       vwDailyUpdslct_poclsd_3.[oo cost], 
       vwDailyUpdslct_poclsd_3.[received units], 
       vwDailyUpdslct_poclsd_3.[received cost], 
       vwDailyUpdslct_poclsd_3.discounts, 
       vwDailyUpdslct_poclsd_3.terms, 
       vwDailyUpdslct_poclsd_3.[terms desc] 
FROM   vwDailyUpdslct_poclsd_3 
       LEFT JOIN f21_fmkt_offer 
              ON vwDailyUpdslct_poclsd_3.catalog = f21_fmkt_offer.offer_id; 
GO
