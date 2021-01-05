SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_4]
as
SELECT vwDailyUpdSlct_PoOpen_3.catalog, 
       f21_fmkt_offer.description AS [CATALOG DESC], 
       vwDailyUpdSlct_PoOpen_3.[po #], 
       vwDailyUpdSlct_PoOpen_3.[req #], 
       vwDailyUpdSlct_PoOpen_3.ndc, 
       vwDailyUpdSlct_PoOpen_3.[fiscal wk], 
       vwDailyUpdSlct_PoOpen_3.[fiscal month #], 
       vwDailyUpdSlct_PoOpen_3.[fiscal month], 
       vwDailyUpdSlct_PoOpen_3.[fiscal year], 
       vwDailyUpdSlct_PoOpen_3.[receipt date], 
       vwDailyUpdSlct_PoOpen_3.[original ndc], 
       vwDailyUpdSlct_PoOpen_3.[approved date], 
       vwDailyUpdSlct_PoOpen_3.[group code], 
       vwDailyUpdSlct_PoOpen_3.[merch type], 
       vwDailyUpdSlct_PoOpen_3.[style desc], 
       vwDailyUpdSlct_PoOpen_3.inv5, 
       vwDailyUpdSlct_PoOpen_3.[color desc], 
       vwDailyUpdSlct_PoOpen_3.inv7, 
       vwDailyUpdSlct_PoOpen_3.[size desc], 
       vwDailyUpdSlct_PoOpen_3.inv10, 
       vwDailyUpdSlct_PoOpen_3.[vendor #], 
       vwDailyUpdSlct_PoOpen_3.vendor, 
       vwDailyUpdSlct_PoOpen_3.[vendor style #], 
       vwDailyUpdSlct_PoOpen_3.[cost ea], 
       vwDailyUpdSlct_PoOpen_3.[po cost], 
       vwDailyUpdSlct_PoOpen_3.[orig ordered units], 
       vwDailyUpdSlct_PoOpen_3.[cxl units], 
       vwDailyUpdSlct_PoOpen_3.[oo units], 
       vwDailyUpdSlct_PoOpen_3.[oo cost], 
       vwDailyUpdSlct_PoOpen_3.[received units], 
       vwDailyUpdSlct_PoOpen_3.[received cost], 
       vwDailyUpdSlct_PoOpen_3.discounts, 
       vwDailyUpdSlct_PoOpen_3.terms, 
       vwDailyUpdSlct_PoOpen_3.[terms desc] 
FROM   vwDailyUpdSlct_PoOpen_3 
       LEFT JOIN f21_fmkt_offer 
              ON vwDailyUpdSlct_PoOpen_3.catalog = f21_fmkt_offer.offer_id; 
GO
