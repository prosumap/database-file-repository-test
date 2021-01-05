SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[VWslct_OrderFlow_07]
as
SELECT OrderFlow06.[category], 
       OrderFlow06.[division], 
       OrderFlow06.[department], 
       OrderFlow06.[class], 
       OrderFlow06.[style], 
       OrderFlow06.[color], 
       OrderFlow06.[size], 
       OrderFlow06.[inv5], 
       OrderFlow06.[inv7], 
       OrderFlow06.[inv10], 
       OrderFlow06.[vendor #], 
       OrderFlow06.[vendor], 
       OrderFlow06.[vendor style], 
       OrderFlow06.[original price], 
       OrderFlow06.[current price], 
       OrderFlow06.[current cost], 
       OrderFlow06.[current event #], 
       OrderFlow06.[current event], 
       OrderFlow06.[last event #], 
       OrderFlow06.[last event], 
       OrderFlow06.[first sales date], 
       OrderFlow06.[first receipt date], 
       OrderFlow06.[last receipt date], 
       OrderFlow06.[next receipt date], 
       OrderFlow06.[current oh units], 
       OrderFlow06.[current oo units], 
       OrderFlow06.[next 30 days oo units], 
       OrderFlow06.[current backorder units], 
       OrderFlow06.[current backorder cost $], 
       OrderFlow06.[current backorder $], 
       OrderFlow06.[return %], 
       OrderFlow06.[order #], 
       OrderFlow06.[internet order #], 
       OrderFlow06.[line], 
       OrderFlow06.[channel], 
       OrderFlow06.[customer #], 
       OrderFlow06.[order date], 
       OrderFlow06.[item date], 
       OrderFlow06.[status], 
       OrderFlow06.[event #], 
       RefCatalog.description AS Event, 
       OrderFlow06.[demand units], 
       OrderFlow06.[demand cost $], 
       OrderFlow06.[demand $], 
       OrderFlow06.[advertised demand $], 
       OrderFlow06.[tax $], 
       OrderFlow06.[ordered fiscal wk], 
       OrderFlow06.[ordered fiscal month #], 
       OrderFlow06.[ordered fiscal month], 
       OrderFlow06.[ordered fiscal qtr], 
       OrderFlow06.[ordered fiscal year], 
       OrderFlow06.[immediate cancel units], 
       OrderFlow06.[immediate cancel cost $], 
       OrderFlow06.[immediate cancel $], 
       OrderFlow06.[advertised immediate cancel $], 
       OrderFlow06.[immediate cancel date], 
       OrderFlow06.[immediate cancel fiscal wk], 
       OrderFlow06.[immediate cancel fiscal month #], 
       OrderFlow06.[immediate cancel fiscal month], 
       OrderFlow06.[immediate cancel fiscal qtr], 
       OrderFlow06.[immediate cancel fiscal year], 
       OrderFlow06.[cancel date], 
       OrderFlow06.[cancel units], 
       OrderFlow06.[cancel cost $], 
       OrderFlow06.[cancel $], 
       OrderFlow06.[advertised cancel $], 
       OrderFlow06.[cancel rsncd], 
       OrderFlow06.[cancel rsn], 
       OrderFlow06.[cancel fiscal wk], 
       OrderFlow06.[cancel fiscal month #], 
       OrderFlow06.[cancel fiscal month], 
       OrderFlow06.[cancel fiscal qtr], 
       OrderFlow06.[cancel fiscal year], 
       OrderFlow06.[ship date], 
       OrderFlow06.[shipped units], 
       OrderFlow06.[shipped cost $], 
       OrderFlow06.[shipped $], 
       OrderFlow06.[advertised shipped $], 
       OrderFlow06.[shipped fiscal wk], 
       OrderFlow06.[shipped fiscal month #], 
       OrderFlow06.[shipped fiscal month], 
       OrderFlow06.[shipped fiscal qtr], 
       OrderFlow06.[shipped fiscal year], 
       OrderFlow06.[return date], 
       OrderFlow06.[return units], 
       OrderFlow06.[return cost $], 
       OrderFlow06.[return $], 
       OrderFlow06.[advertised return $], 
       OrderFlow06.[return rsncd], 
       OrderFlow06.[return rsn], 
       OrderFlow06.[return fiscal wk], 
       OrderFlow06.[return fiscal month #], 
       OrderFlow06.[return fiscal month], 
       OrderFlow06.[return fiscal qtr], 
       OrderFlow06.[return fiscal year], 
       OrderFlow06.[exchange date], 
       OrderFlow06.[exchange units], 
       OrderFlow06.[exchange cost $], 
       OrderFlow06.[exchange $], 
       OrderFlow06.[advertised exchange $], 
       OrderFlow06.[exchange rsncd], 
       OrderFlow06.[exchange reason], 
       OrderFlow06.[exchange fiscal wk], 
       OrderFlow06.[exchange fiscal month #], 
       OrderFlow06.[exchange fiscal month], 
       OrderFlow06.[exchange fiscal qtr], 
       OrderFlow06.[exchange fiscal year] 
FROM   [dbo].[VWslct_orderflow_06] AS OrderFlow06
       LEFT JOIN [dbo].[reftbl_catalog] AS RefCatalog
              ON OrderFlow06.[event #] = RefCatalog.[offer_id]; 
GO
