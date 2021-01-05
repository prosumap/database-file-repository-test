SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_1]

as 

SELECT LEFT([pobp], 3)                                                      AS 
       [CATALOG], 
       reftbl_opcspo.pobp                                                   AS 
       [PO #], 
       reftbl_opcspo.f21reqid                                               AS 
       [REQ #], 
       reftbl_opcspo.expdate                                                AS 
       NDC, 
       reftbl_opcspo.recddate                                               AS 
       [RECEIPT DATE], 
       NULL                                                                 AS 
       [ORIGINAL NDC], 
       reftbl_opcspo.approveddt                                             AS 
       [APPROVED DATE], 
       mktbl_skumaster.cat_description                                      AS 
       [GROUP CODE], 
       mktbl_skumaster.subcat_description                                   AS 
       [MERCH TYPE], 
       mktbl_skumaster.[style description]                                  AS 
       [STYLE DESC], 
       mktbl_skumaster.[offer product id]                                   AS 
       INV5, 
       mktbl_skumaster.[color description]                                  AS 
       [COLOR DESC], 
       LEFT([item no], 7)                                                   AS 
       INV7, 
       mktbl_skumaster.[size description]                                   AS 
       [SIZE DESC], 
       reftbl_opcspo.[item no]                                              AS 
       INV10, 
       mktbl_skumaster.[vendor #]                                           AS 
       [VENDOR #], 
       mktbl_skumaster.[vendor style]                                       AS 
       [VENDOR STYLE #], 
       mktbl_skumaster.cost_ea                                              AS 
       [COST EA], 
       reftbl_opcspo.unitcostdd                                             AS 
       [PO COST], 
       reftbl_opcspo.ordqq                                                  AS 
       [ORIG ORDERED UNITS], 
       reftbl_opcspo.cx                                                     AS 
       [CXL UNITS], 
       Iif(isnull([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0) > 0, 
       ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0), 0)                  AS 
       [OO UNITS], 
       Iif(ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0) > 0, ( 
       ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0) ) * [unitcostdd], 0) AS 
       [OO COST], 
       Iif([qtyrecd] > 0, [qtyrecd], 0)                                     AS 
       [RECEIVED UNITS], 
       Iif([qtyrecd] > 0, [qtyrecd] * [unitcostdd], 0)                      AS 
       [RECEIVED COST], 
       reftbl_opcspo.terms                                                  AS 
       TERMS, 
       [discountdd] 
       + Iif([discountpc]>0, ([discountpc]*[unitcostdd])*([ordqq]-[cx]), 0) AS 
       DISCOUNTS 
FROM   reftbl_opcspo 
       LEFT JOIN mktbl_skumaster 
              ON reftbl_opcspo.[item no] = mktbl_skumaster.sku 
WHERE  (( ( reftbl_opcspo.[item no] ) IS NOT NULL )) 
GROUP  BY LEFT([pobp], 3), 
          reftbl_opcspo.pobp, 
          reftbl_opcspo.f21reqid, 
          reftbl_opcspo.expdate, 
          reftbl_opcspo.recddate, 
          
          reftbl_opcspo.approveddt, 
          mktbl_skumaster.cat_description, 
          mktbl_skumaster.subcat_description, 
          mktbl_skumaster.[style description], 
          mktbl_skumaster.[offer product id], 
          mktbl_skumaster.[color description], 
          LEFT([item no], 7), 
          mktbl_skumaster.[size description], 
          reftbl_opcspo.[item no], 
          mktbl_skumaster.[vendor #], 
          mktbl_skumaster.[vendor style], 
          mktbl_skumaster.cost_ea, 
          reftbl_opcspo.unitcostdd, 
          reftbl_opcspo.ordqq, 
          reftbl_opcspo.cx, 
          Iif(ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0) > 0, 
          ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0), 0), 
          Iif(ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0) > 0, ( 
          ISNULL([ordqq], 0) - ISNULL([cx], 0) - ISNULL([qtyrecd], 0) ) * [unitcostdd], 0), 
          Iif([qtyrecd] > 0, [qtyrecd], 0), 
          Iif([qtyrecd] > 0, [qtyrecd] * [unitcostdd], 0), 
          reftbl_opcspo.terms, 
          [discountdd] 
          + Iif([discountpc]>0, ([discountpc]*[unitcostdd])*([ordqq]-[cx]), 0) 
--ORDER  BY LEFT([pobp], 3), 
--          reftbl_opcspo.pobp, 
--          reftbl_opcspo.f21reqid, 
--          reftbl_opcspo.expdate, 
--          reftbl_opcspo.recddate; 
GO
