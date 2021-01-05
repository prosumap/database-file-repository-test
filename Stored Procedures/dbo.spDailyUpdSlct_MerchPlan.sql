SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[spDailyUpdSlct_MerchPlan](
@Catalog varchar(10),
@Version_no varchar(20)
)
as
begin
SELECT f21_vdrs_sku_listing.[offer_id], 
       mktbl_skumaster.[cat_description], 
       mktbl_skumaster.[subcat_description], 
       mktbl_skumaster.[style description], 
       mktbl_skumaster.[offer product id]      AS [INV5], 
       mktbl_skumaster.[color description], 
       LEFT([mktbl_skumaster].[sku], 7)      AS [INV7], 
       mktbl_skumaster.[size description], 
       mktbl_skumaster.[sku]                     AS [INV10], 
       f21_vdrs_sku_listing.[version_no], 
       Sum(f21_vdrs_sku_listing.[revenue])       AS [GROSS DEMAND], 
       Sum(f21_vdrs_sku_listing.[expected_cost]) AS [DEMAND COST], 
       Sum(f21_vdrs_sku_listing.[units])         AS [DEMAND UNITS], 
       Sum(f21_vdrs_sku_listing.[sh_revenue])    AS [NET DEMAND], 
       mktbl_skumaster.[unit_price], 
       mktbl_skumaster.[cost_ea] 
FROM   f21_vdrs_sku_listing 
       LEFT JOIN mktbl_skumaster 
              ON ( f21_vdrs_sku_listing.[offer_id] = mktbl_skumaster.[offer_id] ) 
                 AND ( f21_vdrs_sku_listing.[sku] = mktbl_skumaster.[sku] ) 
GROUP  BY f21_vdrs_sku_listing.[offer_id], 
          mktbl_skumaster.[cat_description], 
          mktbl_skumaster.[subcat_description], 
          mktbl_skumaster.[style description], 
          mktbl_skumaster.[offer product id], 
          mktbl_skumaster.[color description], 
          LEFT([mktbl_skumaster].[sku], 7), 
          mktbl_skumaster.[size description], 
          mktbl_skumaster.[sku], 
          f21_vdrs_sku_listing.[version_no], 
          mktbl_skumaster.[unit_price], 
          mktbl_skumaster.[cost_ea]
HAVING ( ( ( f21_vdrs_sku_listing.[offer_id] ) = @catalog ) 
         AND ( ( f21_vdrs_sku_listing.[version_no] ) = @Version_no) ); 
		end
GO
