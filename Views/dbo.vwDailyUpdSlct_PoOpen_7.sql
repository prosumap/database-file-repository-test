SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_7]
as
SELECT vwDailyUpdslct_poopen_6.catalog, 
       vwDailyUpdslct_poopen_6.[catalog desc], 
       vwDailyUpdslct_poopen_6.[po #], 
       vwDailyUpdslct_poopen_6.[req #], 
       vwDailyUpdslct_poopen_6.ndc, 
       vwDailyUpdslct_poopen_6.[fiscal wk], 
       vwDailyUpdslct_poopen_6.[fiscal month #], 
       vwDailyUpdslct_poopen_6.[fiscal month], 
       vwDailyUpdslct_poopen_6.[fiscal year], 
       mktbl_arrivals.exp_ship_date       AS [SHIP DATE], 
       vwDailyUpdslct_poopen_6.[receipt date], 
       vwDailyUpdslct_poopen_6.[original ndc], 
       vwDailyUpdslct_poopen_6.[approved date], 
       vwDailyUpdslct_poopen_6.[group code], 
       vwDailyUpdslct_poopen_6.[merch type], 
       vwDailyUpdslct_poopen_6.[style desc], 
       vwDailyUpdslct_poopen_6.inv5, 
       vwDailyUpdslct_poopen_6.[color desc], 
       vwDailyUpdslct_poopen_6.inv7, 
       vwDailyUpdslct_poopen_6.[size desc], 
       vwDailyUpdslct_poopen_6.inv10, 
       vwDailyUpdslct_poopen_6.[vendor #], 
       vwDailyUpdslct_poopen_6.vendor, 
       vwDailyUpdslct_poopen_6.[vendor style #], 
       vwDailyUpdslct_poopen_6.[cost ea], 
       vwDailyUpdslct_poopen_6.[po cost], 
       vwDailyUpdslct_poopen_6.[orig ordered units], 
       vwDailyUpdslct_poopen_6.[cxl units], 
       vwDailyUpdslct_poopen_6.[oo units], 
       vwDailyUpdslct_poopen_6.[oo cost], 
       vwDailyUpdslct_poopen_6.[received units], 
       vwDailyUpdslct_poopen_6.[received cost], 
       vwDailyUpdslct_poopen_6.discounts, 
       vwDailyUpdslct_poopen_6.chargeback, 
       vwDailyUpdslct_poopen_6.terms, 
       vwDailyUpdslct_poopen_6.[terms desc], 
       mktbl_arrivals.transportation_mode AS [SHIP MODE] 
FROM   mktbl_arrivals 
       RIGHT JOIN vwDailyUpdslct_poopen_6 
               ON mktbl_arrivals.po_id = vwDailyUpdslct_poopen_6.[po #]; 
GO
