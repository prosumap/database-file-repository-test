SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_PoClsd_5]
as

SELECT vwDailyUpdslct_poclsd_4.catalog, 
       vwDailyUpdslct_poclsd_4.[catalog desc], 
       vwDailyUpdslct_poclsd_4.[po #], 
       vwDailyUpdslct_poclsd_4.[req #], 
       vwDailyUpdslct_poclsd_4.ndc, 
       vwDailyUpdslct_poclsd_4.[fiscal wk], 
       vwDailyUpdslct_poclsd_4.[fiscal month #], 
       vwDailyUpdslct_poclsd_4.[fiscal month], 
       vwDailyUpdslct_poclsd_4.[fiscal year], 
       vwDailyUpdslct_poclsd_4.[receipt date], 
       vwDailyUpdslct_poclsd_4.[original ndc], 
       vwDailyUpdslct_poclsd_4.[approved date], 
       vwDailyUpdslct_poclsd_4.[group code], 
       vwDailyUpdslct_poclsd_4.[merch type], 
       vwDailyUpdslct_poclsd_4.[style desc], 
       vwDailyUpdslct_poclsd_4.inv5, 
       vwDailyUpdslct_poclsd_4.[color desc], 
       vwDailyUpdslct_poclsd_4.inv7, 
       vwDailyUpdslct_poclsd_4.[size desc], 
       vwDailyUpdslct_poclsd_4.inv10, 
       vwDailyUpdslct_poclsd_4.[vendor #], 
       vwDailyUpdslct_poclsd_4.vendor, 
       vwDailyUpdslct_poclsd_4.[vendor style #], 
       vwDailyUpdslct_poclsd_4.[cost ea]                        AS [COST EA], 
       vwDailyUpdslct_poclsd_4.[po cost], 
       vwDailyUpdslct_poclsd_4.[orig ordered units], 
       vwDailyUpdslct_poclsd_4.[cxl units], 
       vwDailyUpdslct_poclsd_4.[oo units], 
       [oo units] * [cost ea]                          AS [OO COST], 
       vwDailyUpdslct_poclsd_4.[received units], 
       [received units] * [vwDailyUpdslct_poclsd_4] . [cost ea] AS [RECEIVED COST], 
       vwDailyUpdslct_poclsd_4.discounts, 
       vwDailyUpdslct_poclsd_4.terms, 
       vwDailyUpdslct_poclsd_4.[terms desc] 
FROM   vwDailyUpdslct_poclsd_4 
       LEFT JOIN mktbl_skumaster 
              ON ( vwDailyUpdslct_poclsd_4.[catalog] = mktbl_skumaster.offer_id ) 
                 AND ( vwDailyUpdslct_poclsd_4.[inv10] = mktbl_skumaster.sku ); 
GO
