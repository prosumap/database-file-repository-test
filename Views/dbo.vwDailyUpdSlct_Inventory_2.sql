SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_Inventory_2]
as 
SELECT fs.SKU, Sum(fs.QTY) AS QTY
FROM vwDailyUpdSlct_Inventory_1 as iv LEFT JOIN F21_FMSH_STOCK_ON_HAND  as fs ON iv.MaxOfMS_VERSION_NO = fs.MS_VERSION_NO
GROUP BY fs.SKU
GO
