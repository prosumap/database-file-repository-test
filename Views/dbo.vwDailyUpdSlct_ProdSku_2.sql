SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_ProdSku_2]
as 

SELECT psk.offer_id, 
       psk.cat_description, 
       psk.subcat_description, 
       psk.[style description], 
       psk.[color description], 
       psk.[size description], 
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
       Sum(mkt.[oo units]) AS [OO UNITS], 
       mkt.[po status], 
       mkt.ndc, 
       mkt.[po #], 
       mkt.[req #], 
       mkt.[approved date] 
FROM   vwDailyUpdSlct_ProdSku_1 as psk
       LEFT JOIN mktbl_ttlonorderreceived as mkt
              ON psk.sku = mkt.inv10 
GROUP  BY psk.offer_id, 
          psk.cat_description, 
          psk.subcat_description, 
          psk.[style description], 
          psk.[color description], 
          psk.[size description], 
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
          mkt.[po status], 
          mkt.ndc, 
          mkt.[po #], 
          mkt.[req #], 
          mkt.[approved date]; 
GO
