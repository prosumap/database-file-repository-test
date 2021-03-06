SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE view [dbo].[VWSlct_OrderFlow_06]
as

SELECT   VWSlct_OrderFlow_05.[order #], 
       VWSlct_OrderFlow_05.[internet order #], 
       VWSlct_OrderFlow_05.[line], 
       VWSlct_OrderFlow_05.[channel], 
       VWSlct_OrderFlow_05.[customer #], 
       VWSlct_OrderFlow_05.[order date], 
       VWSlct_OrderFlow_05.[item date], 
       VWSlct_OrderFlow_05.[status], 
       VWSlct_OrderFlow_05.[event #], 
       mktbl_currentinv10.[Category], 
       mktbl_currentinv10.[Division], 
       mktbl_currentinv10.[Department], 
       mktbl_currentinv10.[Class], 
       mktbl_currentinv10.[Style], 
       mktbl_currentinv10.[Color], 
       mktbl_currentinv10.[Size], 
       mktbl_currentinv10.[INV5], 
       mktbl_currentinv10.[INV7], 
       VWSlct_OrderFlow_05.[inv10], 
   ---------------3 fields added later---------------------------------    
	   mktbl_currentinv10.[vendor #], 
       mktbl_currentinv10.vendor, 
       mktbl_currentinv10.[vendor style], 
       
	----------------------------------------------   
	   mktbl_currentinv10.[original price], 
       mktbl_currentinv10.[current price], 
       mktbl_currentinv10.[current cost], 
       mktbl_currentinv10.[current event #], 
       mktbl_currentinv10.[current event], 
       mktbl_currentinv10.[last event #], 
       mktbl_currentinv10.[last event], 
       mktbl_currentinv10.[first sales date], 
       mktbl_currentinv10.[first receipt date], 
       mktbl_currentinv10.[last receipt date], 
       mktbl_currentinv10.[next receipt date], 
       mktbl_currentinv10.[current oh units], 
       mktbl_currentinv10.[current oo units], 
       mktbl_currentinv10.[next 30 days oo units], 
       mktbl_currentinv10.[current backorder units], 
       mktbl_currentinv10.[current backorder cost $], 
       mktbl_currentinv10.[current backorder $], 
       mktbl_currentinv10.[return %], 
       VWSlct_OrderFlow_05.[demand units], 
       VWSlct_OrderFlow_05.[demand cost $], 
       VWSlct_OrderFlow_05.[demand $], 
       VWSlct_OrderFlow_05.[advertised demand $], 
       VWSlct_OrderFlow_05.[tax $], 
       VWSlct_OrderFlow_05.[ordered fiscal wk], 
       VWSlct_OrderFlow_05.[ordered fiscal month #], 
       VWSlct_OrderFlow_05.[ordered fiscal month], 
       VWSlct_OrderFlow_05.[ordered fiscal qtr], 
       VWSlct_OrderFlow_05.[ordered fiscal year], 
       VWSlct_OrderFlow_05.[immediate cancel units], 
       VWSlct_OrderFlow_05.[immediate cancel cost $], 
       VWSlct_OrderFlow_05.[immediate cancel $], 
       VWSlct_OrderFlow_05.[advertised immediate cancel $], 
       VWSlct_OrderFlow_05.[immediate cancel date], 
       VWSlct_OrderFlow_05.[immediate cancel fiscal wk], 
       VWSlct_OrderFlow_05.[immediate cancel fiscal month #], 
       VWSlct_OrderFlow_05.[immediate cancel fiscal month], 
       VWSlct_OrderFlow_05.[immediate cancel fiscal qtr], 
       VWSlct_OrderFlow_05.[immediate cancel fiscal year], 
       VWSlct_OrderFlow_05.[cancel date], 
       VWSlct_OrderFlow_05.[cancel units], 
       VWSlct_OrderFlow_05.[cancel cost $], 
       VWSlct_OrderFlow_05.[cancel $], 
       VWSlct_OrderFlow_05.[advertised cancel $], 
       VWSlct_OrderFlow_05.[cancel rsncd], 
       VWSlct_OrderFlow_05.[cancel rsn], 
       VWSlct_OrderFlow_05.[cancel fiscal wk], 
       VWSlct_OrderFlow_05.[cancel fiscal month #], 
       VWSlct_OrderFlow_05.[cancel fiscal month], 
       VWSlct_OrderFlow_05.[cancel fiscal qtr], 
       VWSlct_OrderFlow_05.[cancel fiscal year], 
       VWSlct_OrderFlow_05.[ship date], 
       VWSlct_OrderFlow_05.[shipped units], 
       VWSlct_OrderFlow_05.[shipped cost $], 
       VWSlct_OrderFlow_05.[shipped $], 
       VWSlct_OrderFlow_05.[advertised shipped $], 
       VWSlct_OrderFlow_05.[shipped fiscal wk], 
       VWSlct_OrderFlow_05.[shipped fiscal month #], 
       VWSlct_OrderFlow_05.[shipped fiscal month], 
       VWSlct_OrderFlow_05.[shipped fiscal qtr], 
       VWSlct_OrderFlow_05.[shipped fiscal year], 
       VWSlct_OrderFlow_05.[return date], 
       VWSlct_OrderFlow_05.[return units], 
       VWSlct_OrderFlow_05.[return cost $], 
       VWSlct_OrderFlow_05.[return $], 
       VWSlct_OrderFlow_05.[advertised return $], 
       VWSlct_OrderFlow_05.[return rsncd], 
       VWSlct_OrderFlow_05.[return rsn], 
       VWSlct_OrderFlow_05.[return fiscal wk], 
       VWSlct_OrderFlow_05.[return fiscal month #], 
       VWSlct_OrderFlow_05.[return fiscal month], 
       VWSlct_OrderFlow_05.[return fiscal qtr], 
       VWSlct_OrderFlow_05.[return fiscal year], 
       VWSlct_OrderFlow_05.[exchange date], 
       VWSlct_OrderFlow_05.[exchange units], 
       VWSlct_OrderFlow_05.[exchange cost $], 
       VWSlct_OrderFlow_05.[exchange $], 
       VWSlct_OrderFlow_05.[advertised exchange $], 
       VWSlct_OrderFlow_05.[exchange rsncd], 
       VWSlct_OrderFlow_05.[exchange reason], 
       VWSlct_OrderFlow_05.[exchange fiscal wk], 
       VWSlct_OrderFlow_05.[exchange fiscal month #], 
       VWSlct_OrderFlow_05.[exchange fiscal month], 
       VWSlct_OrderFlow_05.[exchange fiscal qtr], 
       VWSlct_OrderFlow_05.[exchange fiscal year] 
FROM   VWslct_orderflow_05 
       LEFT JOIN mktbl_currentinv10 
              ON VWSlct_OrderFlow_05.inv10 = mktbl_currentinv10.inv10; 
GO
