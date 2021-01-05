SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[vwDailyUpdSlct_ProdSku_4]
as 

SELECT psk.offer_id, 
       rct.description AS OFFER, 
       rct.[go live fiscal week], 
       rct.[go live fiscal year], 
       psk.cat_description, 
       psk.subcat_description, 
       psk.[style description], 
       psk.[color description], 
       psk.[size description], 
       psk.inv5, 
       psk.inv7, 
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
       psk.[oh units], 
       psk.[oo units], 
       psk.ndc, 
       psk.[po status], 
       psk.[po #], 
       psk.[req #], 
       psk.[approved date] 
FROM   vwDailyUpdSlct_ProdSku_3 as psk
       INNER JOIN reftbl_catalog as rct
               ON psk.offer_id = rct.offer_id; 
GO
