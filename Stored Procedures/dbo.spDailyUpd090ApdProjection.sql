SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE   PROC  [dbo].[spDailyUpd090ApdProjection]
AS
BEGIN
INSERT INTO mktbl_projection 
            ([offer_id], 
             [cat_description], 
             [subcat_description], 
             [style description], 
             [inv5], 
             [color description], 
             [inv7], 
             [size description], 
             [inv10], 
             [gross demand], 
             [net demand], 
             [demand cost], 
             [demand units], 
             [unit_price], 
             [cost_ea], 
             [oh u], 
             [oo u], 
             [held req u]) 
SELECT vwDailyUpdSlct_Projection.[offer_id], 
       vwDailyUpdSlct_Projection.[cat_description], 
       vwDailyUpdSlct_Projection.[subcat_description], 
       vwDailyUpdSlct_Projection.[style description], 
       vwDailyUpdSlct_Projection.[inv5], 
       vwDailyUpdSlct_Projection.[color description], 
       vwDailyUpdSlct_Projection.[inv7], 
       vwDailyUpdSlct_Projection.[size description], 
       vwDailyUpdSlct_Projection.[inv10], 
       vwDailyUpdSlct_Projection.[gross demand]      AS [GROSS DEMAND], 
       vwDailyUpdSlct_Projection.[net demand]        AS [NET DEMAND], 
       vwDailyUpdSlct_Projection.[demand cost]       AS [DEMAND COST], 
       vwDailyUpdSlct_Projection.[demand units]      AS [DEMAND UNITS], 
       vwDailyUpdSlct_Projection.[unit_price], 
       vwDailyUpdSlct_Projection.[cost_ea], 
       vwDailyUpdSlct_ProjInventory.[oh units]       AS [OH U], 
       Sum(IIF([po #] = '', 0, [oo units])) AS [OO U], 
       Sum(IIF([po #] = '', [oo units], 0)) AS [HELD REQ U] 
FROM   vwDailyUpdSlct_Projection 
       LEFT JOIN vwDailyUpdSlct_ProjInventory 
              ON vwDailyUpdSlct_Projection.[inv10] = vwDailyUpdSlct_ProjInventory.[sku] 
GROUP  BY vwDailyUpdSlct_Projection.[offer_id], 
          vwDailyUpdSlct_Projection.[cat_description], 
          vwDailyUpdSlct_Projection.[subcat_description], 
          vwDailyUpdSlct_Projection.[style description], 
          vwDailyUpdSlct_Projection.[inv5], 
          vwDailyUpdSlct_Projection.[color description], 
          vwDailyUpdSlct_Projection.[inv7], 
          vwDailyUpdSlct_Projection.[size description], 
          vwDailyUpdSlct_Projection.[inv10], 
          vwDailyUpdSlct_Projection.[gross demand], 
          vwDailyUpdSlct_Projection.[net demand], 
          vwDailyUpdSlct_Projection.[demand cost], 
          vwDailyUpdSlct_Projection.[demand units], 
          vwDailyUpdSlct_Projection.[unit_price], 
          vwDailyUpdSlct_Projection.[cost_ea], 
          vwDailyUpdSlct_ProjInventory.[oh units];
END		  
GO
