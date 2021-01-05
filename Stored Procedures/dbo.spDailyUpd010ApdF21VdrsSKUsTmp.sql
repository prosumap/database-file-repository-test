SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create PROC [dbo].[spDailyUpd010ApdF21VdrsSKUsTmp]
AS
BEGIN
INSERT INTO tmpdailyupdf21vdrsskus 
            (offer_id, 
             sku, 
             cat_description, 
             category_id, 
             subcat_description, 
             sub_category_id, 
             descriptor1, 
             descriptor2, 
             unit_price) 
SELECT f21_vdrs_sku_listing.offer_id, 
       f21_vdrs_sku_listing.sku, 
       f21_vdrs_sku_listing.cat_description, 
       f21_vdrs_sku_listing.category_id, 
       f21_vdrs_sku_listing.subcat_description, 
       f21_vdrs_sku_listing.sub_category_id, 
       f21_vdrs_sku_listing.descriptor1, 
       f21_vdrs_sku_listing.descriptor2, 
       f21_vdrs_sku_listing.unit_price 
FROM   f21_vdrs_sku_listing 
WHERE  (( ( f21_vdrs_sku_listing.version_no ) = 1 )); 
END
GO
