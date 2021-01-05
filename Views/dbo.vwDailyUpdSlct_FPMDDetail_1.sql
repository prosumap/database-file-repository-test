SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


Create view [dbo].[vwDailyUpdSlct_FPMDDetail_1]
as

SELECT IIF(LEFT([reftbl_opcsinet] . [cat#], 1) = 2, 'markdown', 'full price') AS 
       STATUS 
       , 
       reftbl_opcsinet.[cat#] 
       AS [CATALOG], 
	   f21_fmkt_offer.description  AS [CATALOG DESC], 
       mktbl_skumaster.cat_description      AS  [GROUP CODE], 
       mktbl_skumaster.subcat_description   AS  [MERCH TYPE], 
       mktbl_skumaster.[style description]  AS  [STYLE DESC], 
       LEFT([mktbl_skumaster] . [sku], 5)   AS INV5, 
       mktbl_skumaster.[color description]  AS [COLOR DESC], 
       LEFT([mktbl_skumaster] . [sku], 7)   AS INV7, 
       mktbl_skumaster.[size description]   AS [SIZE DESC], 
       mktbl_skumaster.sku                  AS INV10, 
       reftbl_opcsinet.catpricedd           AS [ORIGINAL PRICE], 
       reftbl_opcsinet.inetpricedd          AS [CURRENT PRICE], 
       reftbl_opcsinet.cost					AS [CURRENT COST], 
       mktbl_skumaster.[pos date]			
	   FROM   (reftbl_opcsinet 
        RIGHT JOIN mktbl_skumaster 
                ON reftbl_opcsinet.inetskuso = mktbl_skumaster.sku) 
       LEFT JOIN f21_fmkt_offer 
              ON reftbl_opcsinet.[cat#] = f21_fmkt_offer.offer_id 
GROUP  BY Iif(LEFT([reftbl_opcsinet] . [cat#], 1) = 2, 'markdown', 'full price') 
, 
          reftbl_opcsinet.[cat#], 
          f21_fmkt_offer.description, 
          mktbl_skumaster.cat_description, 
          mktbl_skumaster.subcat_description, 
          mktbl_skumaster.[style description], 
          LEFT([mktbl_skumaster] . [sku], 5), 
          mktbl_skumaster.[color description], 
          LEFT([mktbl_skumaster] . [sku], 7), 
          mktbl_skumaster.[size description], 
          mktbl_skumaster.sku, 
          reftbl_opcsinet.catpricedd, 
          reftbl_opcsinet.inetpricedd, 
          reftbl_opcsinet.cost, 
          mktbl_skumaster.[pos date] 
HAVING (( ( LEFT([mktbl_skumaster] .[sku], 1) ) = '2' )); 
GO
