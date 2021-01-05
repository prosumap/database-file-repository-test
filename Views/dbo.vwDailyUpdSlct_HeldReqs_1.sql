SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_HeldReqs_1]
AS
SELECT NULL                                       AS [CATALOG], 
       NULL                                       AS [PO #], 
       f21_vfmsh_po_req_detail.[requisition_no]     AS [REQ #], 
       format(cast([expected_receipt_date] AS datetime),'yyyy-MM-dd hh:mm:ss tt' )         AS [NDC], 
       mktbl_skumaster.[cat_description]            AS [GROUP CODE], 
       mktbl_skumaster.[subcat_description]         AS [MERCH TYPE], 
       mktbl_skumaster.[style description]        AS [STYLE DESC], 
       mktbl_skumaster.[offer product id]         AS [INV5], 
       mktbl_skumaster.[color description]        AS [COLOR DESC], 
       LEFT([f21_vfmsh_po_req_detail].[sku], 7) AS [INV7], 
       mktbl_skumaster.[size description]         AS [SIZE DESC], 
       f21_vfmsh_po_req_detail.[sku]                AS [INV10], 
       mktbl_skumaster.[vendor #]                 AS [VENDOR #], 
       mktbl_skumaster.[vendor style]             AS [VENDOR STYLE #], 
       f21_vfmsh_po_req_detail.[cost_ea]            AS [COST], 
       f21_vfmsh_po_req_detail.[qty]                AS [OO UNITS], 
       f21_vfmsh_po_req_detail.[extended_cost]      AS [OO COST $] 
FROM   f21_vfmsh_po_req_detail 
       LEFT JOIN mktbl_skumaster 
              ON f21_vfmsh_po_req_detail.[sku] = mktbl_skumaster.[sku] 
WHERE  (( ( f21_vfmsh_po_req_detail.[status] ) = 'H' )) 
GROUP  BY 
          f21_vfmsh_po_req_detail.[requisition_no], 
          format(cast([expected_receipt_date] AS datetime),'yyyy-MM-dd hh:mm:ss tt' ) ,
          mktbl_skumaster.[cat_description], 
          mktbl_skumaster.[subcat_description], 
          mktbl_skumaster.[style description], 
          mktbl_skumaster.[offer product id], 
          mktbl_skumaster.[color description], 
          LEFT([f21_vfmsh_po_req_detail].[sku], 7), 
          mktbl_skumaster.[size description], 
          f21_vfmsh_po_req_detail.[sku], 
          mktbl_skumaster.[vendor #], 
          mktbl_skumaster.[vendor style], 
          f21_vfmsh_po_req_detail.[cost_ea], 
          f21_vfmsh_po_req_detail.[qty], 
          f21_vfmsh_po_req_detail.[extended_cost] 
GO
