SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[spDailyUpd620ApdMkTbl_Placeholder]
AS
BEGIN
INSERT INTO mktbl_placeholder 
            ([catalog #], 
             [category], 
             [division], 
             [department], 
             [class], 
             [style], 
             [inv5], 
             [color], 
             [inv7], 
             [size], 
             [inv10], 
             [return rate], 
             [version_no], 
             [gross demand], 
             [demand cost], 
             [demand units], 
             [net demand], 
             [unit_price], 
             [cost_ea], 
             [oh u], 
             [oo u], 
             [held req u]) 
SELECT vwDailyUPDSlct_Placeholder_02.[catalog #], 
       vwDailyUPDSlct_Placeholder_02.[category], 
       vwDailyUPDSlct_Placeholder_02.[division], 
       vwDailyUPDSlct_Placeholder_02.[department], 
       vwDailyUPDSlct_Placeholder_02.[class], 
       vwDailyUPDSlct_Placeholder_02.[style], 
       vwDailyUPDSlct_Placeholder_02.[inv5], 
       vwDailyUPDSlct_Placeholder_02.[color], 
       vwDailyUPDSlct_Placeholder_02.[inv7], 
       vwDailyUPDSlct_Placeholder_02.[size], 
       vwDailyUPDSlct_Placeholder_02.[inv10], 
       vwDailyUPDSlct_Placeholder_02.[return rate], 
       vwDailyUPDSlct_Placeholder_02.[version_no], 
       vwDailyUPDSlct_Placeholder_02.[gross demand], 
       vwDailyUPDSlct_Placeholder_02.[demand cost], 
       vwDailyUPDSlct_Placeholder_02.[demand units], 
       vwDailyUPDSlct_Placeholder_02.[net demand], 
       vwDailyUPDSlct_Placeholder_02.[unit_price], 
       vwDailyUPDSlct_Placeholder_02.[cost_ea], 
       0                                AS [OH U], 
       0                                AS [OO U], 
       Sum(f21_vfmsh_po_req_detail.[qty]) AS [HELD REQ U] 
FROM   f21_vfmsh_po_req_detail 
       RIGHT JOIN vwDailyUPDSlct_Placeholder_02 
               ON f21_vfmsh_po_req_detail.[product_id] = vwDailyUPDSlct_Placeholder_02.[inv5] 
GROUP  BY vwDailyUPDSlct_Placeholder_02.[catalog #], 
          vwDailyUPDSlct_Placeholder_02.[category], 
          vwDailyUPDSlct_Placeholder_02.[division], 
          vwDailyUPDSlct_Placeholder_02.[department], 
          vwDailyUPDSlct_Placeholder_02.[class], 
          vwDailyUPDSlct_Placeholder_02.[style], 
          vwDailyUPDSlct_Placeholder_02.[inv5], 
          vwDailyUPDSlct_Placeholder_02.[color], 
          vwDailyUPDSlct_Placeholder_02.[inv7], 
          vwDailyUPDSlct_Placeholder_02.[size], 
          vwDailyUPDSlct_Placeholder_02.[inv10], 
          vwDailyUPDSlct_Placeholder_02.[return rate], 
          vwDailyUPDSlct_Placeholder_02.[version_no], 
          vwDailyUPDSlct_Placeholder_02.[gross demand], 
          vwDailyUPDSlct_Placeholder_02.[demand cost], 
          vwDailyUPDSlct_Placeholder_02.[demand units], 
          vwDailyUPDSlct_Placeholder_02.[net demand], 
          vwDailyUPDSlct_Placeholder_02.[unit_price], 
          vwDailyUPDSlct_Placeholder_02.[cost_ea] 
--0; 
END
GO
