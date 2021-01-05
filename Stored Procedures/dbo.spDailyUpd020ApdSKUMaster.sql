SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[spDailyUpd020ApdSKUMaster]
AS
BEGIN
INSERT INTO mktbl_skumaster 
            ([offer sku id], 
             [offer_id], 
             [cat_description], 
             [category_id], 
             [subcat_description], 
             [sub_category_id], 
             [style description], 
             [offer product id], 
             [bp style], 
             [color description], 
             [descriptor1], 
             [size description], 
             [descriptor2], 
             [sku], 
             [bp_upccd], 
             [cost_ea], 
             [unit_price], 
             [vendor #], 
             [vendor name], 
             [vendor color], 
             [vendor style], 
             [pos date]) 
SELECT Concat([offer_id] , [tmpdailyupdf21vdrsskus].[sku]) AS [OFFER SKU ID], 
       tmpdailyupdf21vdrsskus.[offer_id], 
       tmpdailyupdf21vdrsskus.[cat_description], 
       tmpdailyupdf21vdrsskus.[category_id], 
       tmpdailyupdf21vdrsskus.[subcat_description], 
       tmpdailyupdf21vdrsskus.[sub_category_id], 
       tmpdailyupdopcsprodsku.[description 1]        AS [STYLE DESCRIPTION], 
       tmpdailyupdopcsprodsku.[base#]                AS [Offer Product Id], 
       tmpdailyupdopcsprodsku.[bp base]              AS [BP STYLE], 
       tmpdailyupdopcsprodsku.[spec 1]               AS [COLOR DESCRIPTION], 
       tmpdailyupdf21vdrsskus.[descriptor1], 
       tmpdailyupdopcsprodsku.[spec 2]               AS [SIZE DESCRIPTION], 
       tmpdailyupdf21vdrsskus.[descriptor2], 
       tmpdailyupdopcsprodsku.[inv]                    AS [Sku], 
       tmpdailyupdopcsprodsku.[upccd]                  AS [BP_UPCCD], 
       f21_fmsh_item_master.[cost_ea], 
       tmpdailyupdf21vdrsskus.[unit_price], 
       tmpdailyupdopcsprodsku.[vendor #], 
       tmpdailyupdopcsprodsku.[vendor name], 
       tmpdailyupdopcsprodsku.[vendor color], 
       tmpdailyupdopcsprodsku.[vendor style], 
       tmpdailyupdopcsprodsku.[pos date] 
FROM   (f21_fmsh_item_master 
        INNER JOIN tmpdailyupdopcsprodsku 
                ON f21_fmsh_item_master.[sku] = tmpdailyupdopcsprodsku.[inv]) 
       LEFT JOIN tmpdailyupdf21vdrsskus 
              ON tmpdailyupdopcsprodsku.[inv] = tmpdailyupdf21vdrsskus.[sku] 
WHERE  (( ( f21_fmsh_item_master.[sku_status] ) = 'ACTV' )) 
GROUP  BY Concat([offer_id] , [tmpdailyupdf21vdrsskus].[sku]), 
          tmpdailyupdf21vdrsskus.[offer_id], 
          tmpdailyupdf21vdrsskus.[cat_description], 
          tmpdailyupdf21vdrsskus.[category_id], 
          tmpdailyupdf21vdrsskus.[subcat_description], 
          tmpdailyupdf21vdrsskus.[sub_category_id], 
          tmpdailyupdopcsprodsku.[description 1], 
          tmpdailyupdopcsprodsku.[base#], 
          tmpdailyupdopcsprodsku.[bp base], 
          tmpdailyupdopcsprodsku.[spec 1], 
          tmpdailyupdf21vdrsskus.[descriptor1], 
          tmpdailyupdopcsprodsku.[spec 2], 
          tmpdailyupdf21vdrsskus.[descriptor2], 
          tmpdailyupdopcsprodsku.[inv], 
          tmpdailyupdopcsprodsku.[upccd], 
          f21_fmsh_item_master.[cost_ea], 
          tmpdailyupdf21vdrsskus.[unit_price], 
          tmpdailyupdopcsprodsku.[vendor #], 
          tmpdailyupdopcsprodsku.[vendor name], 
          tmpdailyupdopcsprodsku.[vendor color], 
          tmpdailyupdopcsprodsku.[vendor style], 
          tmpdailyupdopcsprodsku.[pos date] 
HAVING (( ( Concat([offer_id] , [tmpdailyupdf21vdrsskus].[sku]) ) IS NOT NULL )); 
END
GO
