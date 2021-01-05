SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[vwDailyUpdSlct_PoOpen_2]
as

SELECT vwDailyUpdSlct_PoOpen_1.catalog, 
       vwDailyUpdSlct_PoOpen_1.[po #], 
       vwDailyUpdSlct_PoOpen_1.[req #], 
       vwDailyUpdSlct_PoOpen_1.ndc, 
       vwDailyUpdSlct_PoOpen_1.[receipt date], 
       vwDailyUpdSlct_PoOpen_1.[original ndc], 
       vwDailyUpdSlct_PoOpen_1.[approved date], 
       vwDailyUpdSlct_PoOpen_1.[group code], 
       vwDailyUpdSlct_PoOpen_1.[merch type], 
       vwDailyUpdSlct_PoOpen_1.[style desc], 
       vwDailyUpdSlct_PoOpen_1.inv5, 
       vwDailyUpdSlct_PoOpen_1.[color desc], 
       vwDailyUpdSlct_PoOpen_1.inv7, 
       vwDailyUpdSlct_PoOpen_1.[size desc], 
       vwDailyUpdSlct_PoOpen_1.inv10, 
       vwDailyUpdSlct_PoOpen_1.[vendor #], 
       Iif([reftbl_opcsvendor].[nametx] IS 
       NULL, [vwDailyUpdslct_uniquevendor].[nametx], [reftbl_opcsvendor].[nametx]) AS 
       VENDOR, 
       vwDailyUpdSlct_PoOpen_1.[vendor style #], 
       vwDailyUpdSlct_PoOpen_1.[cost ea], 
       vwDailyUpdSlct_PoOpen_1.[po cost], 
       vwDailyUpdSlct_PoOpen_1.[orig ordered units], 
       vwDailyUpdSlct_PoOpen_1.[cxl units], 
       vwDailyUpdSlct_PoOpen_1.[oo units], 
       vwDailyUpdSlct_PoOpen_1.[oo cost], 
       vwDailyUpdSlct_PoOpen_1.[received units], 
       vwDailyUpdSlct_PoOpen_1.[received cost], 
       vwDailyUpdSlct_PoOpen_1.discounts, 
       vwDailyUpdSlct_PoOpen_1.terms, 
       reftbl_opcsvendor.termsdesc                                        AS 
       [TERMS DESC], 
       reftbl_opcsvendor.nametx 
FROM   (vwDailyUpdSlct_PoOpen_1 
        LEFT JOIN reftbl_opcsvendor 
               ON ( vwDailyUpdSlct_PoOpen_1.terms = reftbl_opcsvendor.terms ) 
                  AND ( vwDailyUpdSlct_PoOpen_1.[vendor #] = 
       reftbl_opcsvendor.vendorfl )) 
       LEFT JOIN vwDailyUpdSlct_UniqueVendor 
              ON vwDailyUpdSlct_PoOpen_1.[vendor #] = vwDailyUpdSlct_UniqueVendor.vendor 
GROUP  BY vwDailyUpdSlct_PoOpen_1.catalog, 
          vwDailyUpdSlct_PoOpen_1.[po #], 
          vwDailyUpdSlct_PoOpen_1.[req #], 
          vwDailyUpdSlct_PoOpen_1.ndc, 
          vwDailyUpdSlct_PoOpen_1.[receipt date], 
          vwDailyUpdSlct_PoOpen_1.[original ndc], 
          vwDailyUpdSlct_PoOpen_1.[approved date], 
          vwDailyUpdSlct_PoOpen_1.[group code], 
          vwDailyUpdSlct_PoOpen_1.[merch type], 
          vwDailyUpdSlct_PoOpen_1.[style desc], 
          vwDailyUpdSlct_PoOpen_1.inv5, 
          vwDailyUpdSlct_PoOpen_1.[color desc], 
          vwDailyUpdSlct_PoOpen_1.inv7, 
          vwDailyUpdSlct_PoOpen_1.[size desc], 
          vwDailyUpdSlct_PoOpen_1.inv10, 
          vwDailyUpdSlct_PoOpen_1.[vendor #], 
          Iif([reftbl_opcsvendor].[nametx] IS 
          NULL, [vwDailyUpdslct_uniquevendor].[nametx], [reftbl_opcsvendor].[nametx]), 
          vwDailyUpdSlct_PoOpen_1.[vendor style #], 
          vwDailyUpdSlct_PoOpen_1.[cost ea], 
          vwDailyUpdSlct_PoOpen_1.[po cost], 
          vwDailyUpdSlct_PoOpen_1.[orig ordered units], 
          vwDailyUpdSlct_PoOpen_1.[cxl units], 
          vwDailyUpdSlct_PoOpen_1.[oo units], 
          vwDailyUpdSlct_PoOpen_1.[oo cost], 
          vwDailyUpdSlct_PoOpen_1.[received units], 
          vwDailyUpdSlct_PoOpen_1.[received cost], 
          vwDailyUpdSlct_PoOpen_1.discounts, 
          vwDailyUpdSlct_PoOpen_1.terms, 
          reftbl_opcsvendor.termsdesc, 
          reftbl_opcsvendor.nametx; 
GO
