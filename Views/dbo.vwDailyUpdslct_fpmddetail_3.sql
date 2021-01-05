SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdslct_fpmddetail_3]
as

SELECT vwDailyUpdslct_fpmddetail_2.status, 
       vwDailyUpdslct_fpmddetail_2.catalog, 
       vwDailyUpdslct_fpmddetail_2.[catalog desc], 
       vwDailyUpdslct_fpmddetail_2.[group code], 
       vwDailyUpdslct_fpmddetail_2.[merch type], 
       vwDailyUpdslct_fpmddetail_2.[style desc], 
       vwDailyUpdslct_fpmddetail_2.inv5, 
       vwDailyUpdslct_fpmddetail_2.[color desc], 
       vwDailyUpdslct_fpmddetail_2.inv7, 
       vwDailyUpdslct_fpmddetail_2.[size desc], 
       vwDailyUpdslct_fpmddetail_2.inv10, 
       vwDailyUpdslct_fpmddetail_2.[original price], 
       vwDailyUpdslct_fpmddetail_2.[current price], 
       vwDailyUpdslct_fpmddetail_2.[current cost], 
       vwDailyUpdslct_inventory_2.qty        AS [OH UNITS], 
       [qty] * [current cost]       AS [OH COST $], 
       [qty] * [current price]      AS [OH TICKET $], 
       vwDailyUpdslct_fpmddetail_2.[oo units], 
       vwDailyUpdslct_fpmddetail_2.[oo cost $], 
       [oo units] * [current price] AS [OO TICKET $], 
       vwDailyUpdslct_fpmddetail_2.[pos date] 
FROM   vwDailyUpdslct_fpmddetail_2 
       LEFT JOIN vwDailyUpdslct_inventory_2 
              ON vwDailyUpdslct_fpmddetail_2.inv10 = vwDailyUpdslct_inventory_2.sku 
GROUP  BY vwDailyUpdslct_fpmddetail_2.status, 
          vwDailyUpdslct_fpmddetail_2.catalog, 
          vwDailyUpdslct_fpmddetail_2.[catalog desc], 
          vwDailyUpdslct_fpmddetail_2.[group code], 
          vwDailyUpdslct_fpmddetail_2.[merch type], 
          vwDailyUpdslct_fpmddetail_2.[style desc], 
          vwDailyUpdslct_fpmddetail_2.inv5, 
          vwDailyUpdslct_fpmddetail_2.[color desc], 
          vwDailyUpdslct_fpmddetail_2.inv7, 
          vwDailyUpdslct_fpmddetail_2.[size desc], 
          vwDailyUpdslct_fpmddetail_2.inv10, 
          vwDailyUpdslct_fpmddetail_2.[original price], 
          vwDailyUpdslct_fpmddetail_2.[current price], 
          vwDailyUpdslct_fpmddetail_2.[current cost], 
          vwDailyUpdslct_inventory_2.qty, 
          [qty] * [current cost], 
          [qty] * [current price], 
          vwDailyUpdslct_fpmddetail_2.[oo units], 
          vwDailyUpdslct_fpmddetail_2.[oo cost $], 
          [oo units] * [current price], 
          vwDailyUpdslct_fpmddetail_2.[pos date]; 


GO
