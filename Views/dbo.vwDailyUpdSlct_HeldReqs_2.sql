SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_HeldReqs_2]
AS
SELECT vwDailyUpdSlct_HeldReqs_1.[catalog], 
       vwDailyUpdSlct_HeldReqs_1.[po #], 
       vwDailyUpdSlct_HeldReqs_1.[req #], 
       vwDailyUpdSlct_HeldReqs_1.[ndc], 
       vwDailyUpdSlct_HeldReqs_1.[group code], 
       vwDailyUpdSlct_HeldReqs_1.[merch type], 
       vwDailyUpdSlct_HeldReqs_1.[style desc], 
       vwDailyUpdSlct_HeldReqs_1.[inv5], 
       vwDailyUpdSlct_HeldReqs_1.[color desc], 
       vwDailyUpdSlct_HeldReqs_1.[inv7], 
       vwDailyUpdSlct_HeldReqs_1.[size desc], 
       vwDailyUpdSlct_HeldReqs_1.[inv10], 
       vwDailyUpdSlct_HeldReqs_1.[vendor #], 
       NULL                      AS [VENDOR DESC], 
       vwDailyUpdSlct_HeldReqs_1.[vendor style #], 
       vwDailyUpdSlct_HeldReqs_1.[cost], 
       vwDailyUpdSlct_HeldReqs_1.[oo units], 
       vwDailyUpdSlct_HeldReqs_1.[oo cost $], 
       reftbl_calendar.[fiscalwk]  AS [FISCAL WEEK], 
       reftbl_calendar.[monthno]   AS [FISCAL MONTH #], 
       reftbl_calendar.[monthdesc] AS [FISCAL MONTH], 
       reftbl_calendar.[year]      AS [FISCAL YEAR], 
       NULL                      AS [CATALOG DESC] 
FROM   vwDailyUpdSlct_HeldReqs_1 
       LEFT JOIN reftbl_calendar 
              ON vwDailyUpdSlct_HeldReqs_1.[ndc] = reftbl_calendar.[date] 
GROUP  BY vwDailyUpdSlct_HeldReqs_1.[catalog], 
          vwDailyUpdSlct_HeldReqs_1.[po #], 
          vwDailyUpdSlct_HeldReqs_1.[req #], 
          vwDailyUpdSlct_HeldReqs_1.[ndc], 
          vwDailyUpdSlct_HeldReqs_1.[group code], 
          vwDailyUpdSlct_HeldReqs_1.[merch type], 
          vwDailyUpdSlct_HeldReqs_1.[style desc], 
          vwDailyUpdSlct_HeldReqs_1.[inv5], 
          vwDailyUpdSlct_HeldReqs_1.[color desc], 
          vwDailyUpdSlct_HeldReqs_1.[inv7], 
          vwDailyUpdSlct_HeldReqs_1.[size desc], 
          vwDailyUpdSlct_HeldReqs_1.[inv10], 
          vwDailyUpdSlct_HeldReqs_1.[vendor #], 
          vwDailyUpdSlct_HeldReqs_1.[vendor style #], 
          vwDailyUpdSlct_HeldReqs_1.[cost], 
          vwDailyUpdSlct_HeldReqs_1.[oo units], 
          vwDailyUpdSlct_HeldReqs_1.[oo cost $], 
          reftbl_calendar.[fiscalwk], 
          reftbl_calendar.[monthno], 
          reftbl_calendar.[monthdesc], 
          reftbl_calendar.[year]
GO
