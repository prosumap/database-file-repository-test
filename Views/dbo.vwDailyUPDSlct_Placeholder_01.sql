SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE view  [dbo].[vwDailyUPDSlct_Placeholder_01]
as
SELECT f21_vdrs_sku_listing.[offer_id], 
       f21_fmsh_item_master.[sub_category_id], 
       f21_fmsh_item_master.[description]                           AS [STYLE DESCRIPTION], 
       f21_vdrs_sku_listing.[offer_product_id]                      AS [INV5], 
       null                                                        AS  [COLOR DESCRIPTION], 
       concat(LEFT([offer_product_id], 5) , RIGHT([offer_product_id], 2)) AS  [INV7], 
       null                                                        AS  [SIZE DESCRIPTION], 
       f21_fmsh_item_master.[sku]                                   AS [INV10], 
       f21_vdrs_sku_listing.[version_no], 
       Sum(f21_vdrs_sku_listing.[revenue])                          AS [GROSS DEMAND], 
       Sum(f21_vdrs_sku_listing.[expected_cost])                    AS  [DEMAND COST], 
       Sum(f21_vdrs_sku_listing.[units])                            AS [DEMAND UNITS], 
       Sum(f21_vdrs_sku_listing.[sh_revenue])                       AS [NET DEMAND], 
       f21_vdrs_sku_listing.[unit_price], 
       f21_fmsh_item_master.[cost_ea] 
FROM   f21_vdrs_sku_listing 
       LEFT JOIN f21_fmsh_item_master 
              ON f21_vdrs_sku_listing.[offer_product_id] = f21_fmsh_item_master.[product_id] 
GROUP  BY f21_vdrs_sku_listing.[offer_id], 
          f21_fmsh_item_master.[sub_category_id], 
          f21_fmsh_item_master.[description], 
          f21_vdrs_sku_listing.[offer_product_id], 
          concat(LEFT([offer_product_id], 5) , RIGHT([offer_product_id], 2)), 
          --'', 
          f21_fmsh_item_master.[sku], 
          f21_vdrs_sku_listing.[version_no], 
          f21_vdrs_sku_listing.[unit_price], 
          f21_fmsh_item_master.[cost_ea]
          --''
HAVING ( ( ( f21_vdrs_sku_listing.[offer_product_id] ) LIKE '%ph%' ) 
         AND ( ( f21_vdrs_sku_listing.[version_no] ) = 1 ) ); 
GO
