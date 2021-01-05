SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--spmktbl_merchplan

CREATE  proc   [dbo].[SpApp_merchplan]

as
begin
INSERT INTO mktbl_merchplan 
            ([offer_id], 
             [cat_description], 
             [subcat_description], 
             [style description], 
             [inv5], 
             [color description], 
             [inv7], 
             [size description], 
             [inv10], 
             [version_no], 
             [gross demand], 
             [net demand], 
             [demand cost], 
             [demand units], 
             [unit_price], 
             [cost_ea], 
             [oh u], 
             [oo u], 
             [held req u],
			 [CrOn]) 
SELECT merchplan.[offer_id], 
       merchplan.[cat_description], 
       merchplan.[subcat_description], 
       merchplan.[style description], 
       merchplan.[inv5], 
       merchplan.[color description], 
       merchplan.[inv7], 
       merchplan.[size description], 
       merchplan.[inv10], 
       merchplan.[version_no], 
       merchplan.[gross demand], 
       merchplan.[net demand], 
       merchplan.[demand cost], 
       merchplan.[demand units], 
       merchplan.[unit_price], 
       merchplan.[cost_ea], 
       Sum(expmktbl_prodsku.[oh units])     AS [OH U], 
       Sum(IIf([po #] = '', 0, [oo units])) AS [OO U], 
       Sum(IIf([po #] = '', [oo units], 0)) AS [HELD REQ U],
	   GETDATE()
FROM   vwdailyUpdSlct_merchplan  as merchplan
       LEFT JOIN expmktbl_prodsku 
              ON ( merchplan.[inv10] = expmktbl_prodsku.[sku] ) 
                 AND ( merchplan.[offer_id] = expmktbl_prodsku.[offer_id] ) 
GROUP  BY merchplan.[offer_id], 
          merchplan.[cat_description], 
          merchplan.[subcat_description], 
          merchplan.[style description], 
          merchplan.[inv5], 
          merchplan.[color description], 
          merchplan.[inv7], 
          merchplan.[size description], 
          merchplan.[inv10], 
          merchplan.[version_no], 
          merchplan.[gross demand], 
          merchplan.[net demand], 
          merchplan.[demand cost], 
          merchplan.[demand units], 
          merchplan.[unit_price], 
          merchplan.[cost_ea]
		; 
		end
GO
