SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_HeldReqs_3]
AS
SELECT vwDailyUpdSlct_HeldReqs_2.[catalog], 
       vwDailyUpdSlct_HeldReqs_2.[po #], 
       vwDailyUpdSlct_HeldReqs_2.[req #], 
       vwDailyUpdSlct_HeldReqs_2.[ndc], 
       vwDailyUpdSlct_HeldReqs_2.[group code], 
       vwDailyUpdSlct_HeldReqs_2.[merch type], 
       vwDailyUpdSlct_HeldReqs_2.[style desc], 
       vwDailyUpdSlct_HeldReqs_2.[inv5], 
       vwDailyUpdSlct_HeldReqs_2.[color desc], 
       vwDailyUpdSlct_HeldReqs_2.[inv7], 
       vwDailyUpdSlct_HeldReqs_2.[size desc], 
       vwDailyUpdSlct_HeldReqs_2.[inv10], 
       vwDailyUpdSlct_HeldReqs_2.[vendor #], 
       reftbl_opcsvendor.[nametx] AS [VENDOR DESC], 
       vwDailyUpdSlct_HeldReqs_2.[vendor style #], 
       vwDailyUpdSlct_HeldReqs_2.[cost], 
       vwDailyUpdSlct_HeldReqs_2.[oo units], 
       vwDailyUpdSlct_HeldReqs_2.[oo cost $], 
       vwDailyUpdSlct_HeldReqs_2.[fiscal week], 
       vwDailyUpdSlct_HeldReqs_2.[fiscal month #], 
       vwDailyUpdSlct_HeldReqs_2.[fiscal month], 
       vwDailyUpdSlct_HeldReqs_2.[fiscal year], 
       vwDailyUpdSlct_HeldReqs_2.[catalog desc] 
FROM   vwDailyUpdSlct_HeldReqs_2 
       LEFT JOIN reftbl_opcsvendor 
              ON vwDailyUpdSlct_HeldReqs_2.[vendor #] = reftbl_opcsvendor.[vendorfl] 
GROUP  BY vwDailyUpdSlct_HeldReqs_2.[catalog], 
          vwDailyUpdSlct_HeldReqs_2.[po #], 
          vwDailyUpdSlct_HeldReqs_2.[req #], 
          vwDailyUpdSlct_HeldReqs_2.[ndc], 
          vwDailyUpdSlct_HeldReqs_2.[group code], 
          vwDailyUpdSlct_HeldReqs_2.[merch type], 
          vwDailyUpdSlct_HeldReqs_2.[style desc], 
          vwDailyUpdSlct_HeldReqs_2.[inv5], 
          vwDailyUpdSlct_HeldReqs_2.[color desc], 
          vwDailyUpdSlct_HeldReqs_2.[inv7], 
          vwDailyUpdSlct_HeldReqs_2.[size desc], 
          vwDailyUpdSlct_HeldReqs_2.[inv10], 
          vwDailyUpdSlct_HeldReqs_2.[vendor #], 
          reftbl_opcsvendor.[nametx], 
          vwDailyUpdSlct_HeldReqs_2.[vendor style #], 
          vwDailyUpdSlct_HeldReqs_2.[cost], 
          vwDailyUpdSlct_HeldReqs_2.[oo units], 
          vwDailyUpdSlct_HeldReqs_2.[oo cost $], 
          vwDailyUpdSlct_HeldReqs_2.[fiscal week], 
          vwDailyUpdSlct_HeldReqs_2.[fiscal month #], 
          vwDailyUpdSlct_HeldReqs_2.[fiscal month], 
          vwDailyUpdSlct_HeldReqs_2.[fiscal year], 
          vwDailyUpdSlct_HeldReqs_2.[catalog desc]; 
GO
