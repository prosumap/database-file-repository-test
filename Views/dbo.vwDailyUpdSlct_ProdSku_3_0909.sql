SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


Create view [dbo].[vwDailyUpdSlct_ProdSku_3_0909]
as 

SELECT psk.offer_id, 
       psk.cat_description, 
       psk.subcat_description, 
       psk.[style description], 
       psk.[color description], 
       psk.[size description], 
       LEFT([psk].[sku], 5) AS INV5, 
       LEFT([psk].[sku], 7) AS INV7, 
       psk.sku, 
       psk.cost_ea, 
       psk.unit_price, 
       psk.[vendor #], 
       psk.[vendor name], 
       psk.[vendor style], 
       psk.[pos date], 
       psk.inet_catalog, 
       psk.inet_price, 
       psk.inet_originalprice, 
       psk.inet_status, 
       iv.qty            AS [OH UNITS], 
       psk.[oo units], 
       psk.ndc, 
       psk.[po status], 
       psk.[po #], 
       psk.[req #], 
       psk.[approved date] 
FROM   vwDailyUpdslct_prodsku_2 as psk
       LEFT JOIN vwDailyUpdslct_inventory_2 as iv
              ON psk.sku = iv.sku 
GROUP  BY psk.offer_id, 
          psk.cat_description, 
          psk.subcat_description, 
          psk.[style description], 
          psk.[color description], 
          psk.[size description], 
          LEFT([psk].[sku], 5), 
          LEFT([psk].[sku], 7), 
          psk.sku, 
          psk.cost_ea, 
          psk.unit_price, 
          psk.[vendor #], 
          psk.[vendor name], 
          psk.[vendor style], 
          psk.[pos date], 
          psk.inet_catalog, 
          psk.inet_price, 
          psk.inet_originalprice, 
          psk.inet_status, 
          iv.qty, 
          psk.[oo units], 
          psk.ndc, 
          psk.[po status], 
          psk.[po #], 
          psk.[req #], 
          psk.[approved date]; 
GO
