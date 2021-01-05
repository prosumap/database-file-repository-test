SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdslct_fpmddetail_4]
as
SELECT vwDailyUpdslct_fpmddetail_1.status, 
       vwDailyUpdslct_fpmddetail_1.catalog, 
       vwDailyUpdslct_fpmddetail_1.[catalog desc], 
       vwDailyUpdslct_fpmddetail_1.[group code], 
       vwDailyUpdslct_fpmddetail_1.[merch type], 
       vwDailyUpdslct_fpmddetail_1.[style desc], 
       vwDailyUpdslct_fpmddetail_1.inv5, 
       vwDailyUpdslct_fpmddetail_1.[color desc], 
       vwDailyUpdslct_fpmddetail_1.inv7, 
       vwDailyUpdslct_fpmddetail_1.[size desc], 
       vwDailyUpdslct_fpmddetail_1.inv10, 
       vwDailyUpdslct_fpmddetail_1.[original price], 
       vwDailyUpdslct_fpmddetail_1.[current price], 
       vwDailyUpdslct_fpmddetail_1.[current cost], 
       f21_vdrs_order_detail.order_date, 
       Sum(f21_vdrs_order_detail.ext_price)  AS [GROSS DEMAND], 
       Sum(f21_vdrs_order_detail.sh_revenue) AS [NET DEMAND], 
       Sum(f21_vdrs_order_detail.ext_cost)   AS [DEMAND COST], 
       Sum(f21_vdrs_order_detail.quantity)   AS [DEMAND UNITS], 
       vwDailyUpdslct_fpmddetail_1.[pos date] 
FROM   vwDailyUpdslct_fpmddetail_1 
       LEFT JOIN f21_vdrs_order_detail 
              ON vwDailyUpdslct_fpmddetail_1.inv10 = f21_vdrs_order_detail.sku 
GROUP  BY vwDailyUpdslct_fpmddetail_1.status, 
          vwDailyUpdslct_fpmddetail_1.catalog, 
          vwDailyUpdslct_fpmddetail_1.[catalog desc], 
          vwDailyUpdslct_fpmddetail_1.[group code], 
          vwDailyUpdslct_fpmddetail_1.[merch type], 
          vwDailyUpdslct_fpmddetail_1.[style desc], 
          vwDailyUpdslct_fpmddetail_1.inv5, 
          vwDailyUpdslct_fpmddetail_1.[color desc], 
          vwDailyUpdslct_fpmddetail_1.inv7, 
          vwDailyUpdslct_fpmddetail_1.[size desc], 
          vwDailyUpdslct_fpmddetail_1.inv10, 
          vwDailyUpdslct_fpmddetail_1.[original price], 
          vwDailyUpdslct_fpmddetail_1.[current price], 
          vwDailyUpdslct_fpmddetail_1.[current cost], 
          f21_vdrs_order_detail.order_date, 
          vwDailyUpdslct_fpmddetail_1.[pos date]; 
GO
