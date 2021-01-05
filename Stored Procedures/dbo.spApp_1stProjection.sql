SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC  [dbo].[spApp_1stProjection]
(@catelog varchar(10), @versionNo varchar(10)
)
AS
BEGIN
INSERT INTO mktbl_1stprojection 
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
             [offered demand $], 
             [demand cost], 
             [demand units], 
             [unit_price], 
             [cost_ea], 
             [oh u], 
             [oo u], 
             [held req u],
			 [CrOn]) 
SELECT vw1stprojection.[offer_id], 
       vw1stprojection.[cat_description], 
       vw1stprojection.[subcat_description], 
       vw1stprojection.[style description], 
       vw1stprojection.[inv5], 
       vw1stprojection.[color description], 
       vw1stprojection.[inv7], 
       vw1stprojection.[size description], 
       vw1stprojection.[inv10], 
       vw1stprojection.[version_no], 
       vw1stprojection.[gross demand], 
       vw1stprojection.[demand cost], 
       vw1stprojection.[demand units], 
       vw1stprojection.[unit_price], 
       vw1stprojection.[cost_ea], 
       Sum(expmktbl_prodsku.[oh units])     AS [OH U], 
       Sum(IIf([po #] = '', 0, [oo units])) AS [OO U], 
       Sum(IIf([po #] = '', [oo units], 0)) AS [HELD REQ U],
       GETDATE()	   
FROM   vwDailyUpdSlct_1stprojection  as vw1stprojection
       LEFT JOIN expmktbl_prodsku 
              ON ( vw1stprojection.[offer_id] = expmktbl_prodsku.[offer_id] ) 
                 AND ( vw1stprojection.[inv10] = expmktbl_prodsku.[sku] ) 
GROUP  BY vw1stprojection.[offer_id], 
          vw1stprojection.[cat_description], 
          vw1stprojection.[subcat_description], 
          vw1stprojection.[style description], 
          vw1stprojection.[inv5], 
          vw1stprojection.[color description], 
          vw1stprojection.[inv7], 
          vw1stprojection.[size description], 
          vw1stprojection.[inv10], 
          vw1stprojection.[version_no], 
          vw1stprojection.[gross demand], 
          vw1stprojection.[demand cost], 
          vw1stprojection.[demand units], 
          vw1stprojection.[unit_price], 
          vw1stprojection.[cost_ea]
		  HAVING vw1stprojection.OFFER_ID=@catelog and vw1stprojection.version_no=@versionNo
END		  
GO
