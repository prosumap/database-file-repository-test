SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--qSlct_ProdSku_1
Create view [dbo].[vwDailyUpdSlct_ProdSku_1]
as
SELECT msk.offer_id, 
       msk.cat_description, 
       msk.subcat_description, 
       msk.[style description], 
       msk.[color description], 
       msk.[size description], 
       msk.sku, 
       msk.cost_ea, 
       msk.unit_price, 
       msk.[vendor #], 
       msk.[vendor name], 
       msk.[vendor style], 
       msk.[pos date], 
       ro.[cat#]      AS INET_Catalog, 
       ro.inetpricedd AS INET_Price, 
       ro.catpricedd  AS INET_OriginalPrice, 
       ro.statuscd    AS INET_Status 
FROM   mktbl_skumaster as msk
       LEFT JOIN reftbl_opcsinet as ro 
              ON msk.sku = ro.inetskuso 
GROUP  BY msk.offer_id, 
          msk.cat_description, 
          msk.subcat_description, 
          msk.[style description], 
          msk.[color description], 
          msk.[size description], 
          msk.sku, 
          msk.cost_ea, 
          msk.unit_price, 
          msk.[vendor #], 
          msk.[vendor name], 
          msk.[vendor style], 
          msk.[pos date], 
          ro.[cat#], 
          ro.inetpricedd, 
          ro.catpricedd, 
          ro.statuscd; 
GO
