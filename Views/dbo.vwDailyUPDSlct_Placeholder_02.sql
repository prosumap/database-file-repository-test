SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vwDailyUPDSlct_Placeholder_02]
AS
SELECT vwDailyUPDSlct_Placeholder_01.[offer_id] AS [Catalog #], 
       IIF(CHARINDEX([style description], 'travel',1 ) > 0, 'travel', 'non-travel') AS [Category], 
       reftbl_f21hierarchy.[division], 
       reftbl_f21hierarchy.[department], 
       reftbl_f21hierarchy.[class], 
       vwDailyUPDSlct_Placeholder_01.[style description] AS [Style], 
       vwDailyUPDSlct_Placeholder_01.[inv5], 
       vwDailyUPDSlct_Placeholder_01.[color description] AS [Color], 
       vwDailyUPDSlct_Placeholder_01.[inv7], 
       vwDailyUPDSlct_Placeholder_01.[size description]  AS [Size], 
       vwDailyUPDSlct_Placeholder_01.[inv10], 
       reftbl_f21hierarchy.[return rate], 
       vwDailyUPDSlct_Placeholder_01.[version_no], 
       vwDailyUPDSlct_Placeholder_01.[gross demand], 
       vwDailyUPDSlct_Placeholder_01.[demand cost], 
       vwDailyUPDSlct_Placeholder_01.[demand units], 
       vwDailyUPDSlct_Placeholder_01.[net demand], 
       vwDailyUPDSlct_Placeholder_01.[unit_price], 
       vwDailyUPDSlct_Placeholder_01.[cost_ea] 
FROM   vwDailyUPDSlct_Placeholder_01 
       LEFT JOIN reftbl_f21hierarchy 
              ON vwDailyUPDSlct_Placeholder_01.[sub_category_id] = reftbl_f21hierarchy.[class code]; 
GO
