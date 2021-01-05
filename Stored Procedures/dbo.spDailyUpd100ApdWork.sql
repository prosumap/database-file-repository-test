SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[spDailyUpd100ApdWork]
AS
BEGIN
INSERT INTO mktbl_work 
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
             [held req u]) 
SELECT vwDailyUpdSlct_Work.[offer_id], 
       vwDailyUpdSlct_Work.[cat_description], 
       vwDailyUpdSlct_Work.[subcat_description], 
       vwDailyUpdSlct_Work.[style description], 
       vwDailyUpdSlct_Work.[inv5], 
       vwDailyUpdSlct_Work.[color description], 
       vwDailyUpdSlct_Work.[inv7], 
       vwDailyUpdSlct_Work.[size description], 
       vwDailyUpdSlct_Work.[inv10], 
       vwDailyUpdSlct_Work.[version_no], 
       vwDailyUpdSlct_Work.[gross demand], 
       vwDailyUpdSlct_Work.[net demand], 
       vwDailyUpdSlct_Work.[demand cost], 
       vwDailyUpdSlct_Work.[demand units], 
       vwDailyUpdSlct_Work.[unit_price], 
       vwDailyUpdSlct_Work.[cost_ea], 
       vwDailyUpdSlct_projinventory.[oh units]          AS [OH U], 
       Sum(IIF([po #] IS NULL, 0, [oo units])) AS [OO U], 
       Sum(IIF([po #] IS NULL, [oo units], 0)) AS [HELD REQ U] 
FROM   vwDailyUpdSlct_Work 
       LEFT JOIN vwDailyUpdSlct_projinventory 
              ON vwDailyUpdSlct_Work.[inv10] = vwDailyUpdSlct_projinventory.[sku] 
GROUP  BY vwDailyUpdSlct_Work.[offer_id], 
          vwDailyUpdSlct_Work.[cat_description], 
          vwDailyUpdSlct_Work.[subcat_description], 
          vwDailyUpdSlct_Work.[style description], 
          vwDailyUpdSlct_Work.[inv5], 
          vwDailyUpdSlct_Work.[color description], 
          vwDailyUpdSlct_Work.[inv7], 
          vwDailyUpdSlct_Work.[size description], 
          vwDailyUpdSlct_Work.[inv10], 
          vwDailyUpdSlct_Work.[version_no], 
          vwDailyUpdSlct_Work.[gross demand], 
          vwDailyUpdSlct_Work.[net demand], 
          vwDailyUpdSlct_Work.[demand cost], 
          vwDailyUpdSlct_Work.[demand units], 
          vwDailyUpdSlct_Work.[unit_price], 
          vwDailyUpdSlct_Work.[cost_ea], 
          vwDailyUpdSlct_projinventory.[oh units];
		  END
GO
