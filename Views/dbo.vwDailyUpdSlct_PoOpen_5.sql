SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_5]
as
SELECT vwDailyUpdslct_poopen_4.catalog, 
       vwDailyUpdslct_poopen_4.[catalog desc], 
       vwDailyUpdslct_poopen_4.[po #], 
       vwDailyUpdslct_poopen_4.[req #], 
       vwDailyUpdslct_poopen_4.ndc, 
       vwDailyUpdslct_poopen_4.[fiscal wk], 
       vwDailyUpdslct_poopen_4.[fiscal month #], 
       vwDailyUpdslct_poopen_4.[fiscal month], 
       vwDailyUpdslct_poopen_4.[fiscal year], 
       vwDailyUpdslct_poopen_4.[receipt date], 
       vwDailyUpdslct_poopen_4.[original ndc], 
       vwDailyUpdslct_poopen_4.[approved date], 
       vwDailyUpdslct_poopen_4.[group code], 
       vwDailyUpdslct_poopen_4.[merch type], 
       vwDailyUpdslct_poopen_4.[style desc], 
       vwDailyUpdslct_poopen_4.inv5, 
       vwDailyUpdslct_poopen_4.[color desc], 
       vwDailyUpdslct_poopen_4.inv7, 
       vwDailyUpdslct_poopen_4.[size desc], 
       vwDailyUpdslct_poopen_4.inv10, 
       vwDailyUpdslct_poopen_4.[vendor #], 
       vwDailyUpdslct_poopen_4.vendor, 
       vwDailyUpdslct_poopen_4.[vendor style #], 
       vwDailyUpdslct_poopen_4.[cost ea]     AS [COST EA], 
       vwDailyUpdslct_poopen_4.[po cost], 
       vwDailyUpdslct_poopen_4.[orig ordered units], 
       vwDailyUpdslct_poopen_4.[cxl units], 
       vwDailyUpdslct_poopen_4.[oo units], 
       [oo units] * [cost ea]       AS [OO COST], 
       vwDailyUpdslct_poopen_4.[received units], 
       [received units] * [cost ea] AS [RECEIVED COST], 
       vwDailyUpdslct_poopen_4.discounts, 
       vwDailyUpdslct_poopen_4.terms, 
       vwDailyUpdslct_poopen_4.[terms desc] 
FROM   vwDailyUpdslct_poopen_4 
       LEFT JOIN mktbl_skumaster 
              ON ( vwDailyUpdslct_poopen_4.inv10 = mktbl_skumaster.sku ) 
                 AND ( vwDailyUpdslct_poopen_4.catalog = mktbl_skumaster.offer_id ); 
GO
