SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[vwslct_prodsku_09_01]
AS
SELECT prodsku08.[category], 
       prodsku08.[division], 
       prodsku08.[department], 
       prodsku08.[class], 
       prodsku08.[style], 
       prodsku08.[color], 
       prodsku08.[inv5], 
       prodsku08.[inv7], 
       prodsku08.[return rate], 
       prodsku08.[vendor], 
       prodsku08.[vendor style #], 
       prodsku08.[original price], 
       prodsku08.[current price], 
       prodsku08.[current discount %], 
       prodsku08.[cost], 
       prodsku08.[current event #], 
       prodsku08.[event #], 
       prodsku08.[event description], 
       prodsku08.[event go live], 
       prodsku08.[event end date], 
       prodsku08.[event begin fiscal week], 
       prodsku08.[event begin fiscal year], 
       prodsku08.[beyond basic] AS [Beyond Basic], 
       prodsku08.[future event] AS [Future Event], 
       prodsku08.[oh units], 
       prodsku08.[oh cost], 
       prodsku08.[oo units], 
       prodsku08.[event oo units], 
       prodsku08.[requested oo units], 
       prodsku08.[backorder units], 
       Sum(wklyinventory.[units])  AS [Event BOP U], 
       Sum([units] * [cost_ea])        AS [Event BOP Cost $] 
FROM   qslct_prodsku_08 AS prodsku08 
       LEFT JOIN mktbl_wklyinventory AS wklyinventory 
              ON ( prodsku08.[event begin fiscal week] = wklyinventory.[fiscal_week] ) 
                 AND ( prodsku08.[event begin fiscal year] = wklyinventory.[fiscal_year] ) 
                 AND ( prodsku08.[inv7] = wklyinventory.[inv7] ) 
GROUP  BY prodsku08.[category], 
          prodsku08.[division], 
          prodsku08.[department], 
          prodsku08.[class], 
          prodsku08.[style], 
          prodsku08.[color], 
          prodsku08.[inv5], 
          prodsku08.[inv7], 
          prodsku08.[return rate], 
          prodsku08.[vendor], 
          prodsku08.[vendor style #], 
          prodsku08.[original price], 
          prodsku08.[current price], 
          prodsku08.[current discount %], 
          prodsku08.[cost], 
          prodsku08.[current event #], 
          prodsku08.[event #], 
          prodsku08.[event description], 
          prodsku08.[event go live], 
          prodsku08.[event end date], 
          prodsku08.[event begin fiscal week], 
          prodsku08.[event begin fiscal year], 
          prodsku08.[beyond basic], 
          prodsku08.[future event], 
          prodsku08.[oh units], 
          prodsku08.[oh cost], 
          prodsku08.[oo units], 
          prodsku08.[event oo units], 
          prodsku08.[requested oo units], 
          prodsku08.[backorder units]; 
GO
