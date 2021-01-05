SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


Create view [dbo].[vwDailyUpdSlct_FPMDDetail_2]
as

SELECT fpm.status, 
       fpm.catalog, 
       fpm.[catalog desc], 
       fpm.[group code], 
       fpm.[merch type], 
       fpm.[style desc], 
       fpm.inv5, 
       fpm.[color desc], 
       fpm.inv7, 
       fpm.[size desc], 
       fpm.inv10, 
       fpm.[original price], 
       fpm.[current price], 
       fpm.[current cost], 
       Sum(mkt.[oo units]) AS [OO UNITS], 
       Sum(mkt.[oo cost])  AS [OO COST $], 
       fpm.[pos date] 
FROM   vwDailyUpdSlct_FPMDDetail_1 as fpm  
       LEFT JOIN mktbl_ttlonorderreceived  as mkt
              ON fpm.inv10 = mkt.inv10 
GROUP  BY fpm.status, 
          fpm.catalog, 
          fpm.[catalog desc], 
          fpm.[group code], 
          fpm.[merch type], 
          fpm.[style desc], 
          fpm.inv5, 
          fpm.[color desc], 
          fpm.inv7, 
          fpm.[size desc], 
          fpm.inv10, 
          fpm.[original price], 
          fpm.[current price], 
          fpm.[current cost], 
          fpm.[pos date]; 
GO
