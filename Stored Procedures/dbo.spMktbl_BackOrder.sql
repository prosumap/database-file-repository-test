SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE procedure [dbo].[spMktbl_BackOrder]
as
SELECT CurrentINV10.category, 
       CurrentINV10.division, 
       CurrentINV10.department, 
       CurrentINV10.class, 
       CurrentINV10.style, 
       CurrentINV10.color, 
       CurrentINV10.size, 
       CurrentINV10.inv5, 
       CurrentINV10.inv7, 
       OrderFlow03.inv10, 
       CurrentINV10.[original price], 
       CurrentINV10.[current price], 
       CurrentINV10.[current cost], 
       CurrentINV10.[current oh units], 
       CurrentINV10.[current oo units], 
       CurrentINV10.[next 30 days oo units], 
       CurrentINV10.[current event #], 
       CurrentINV10.[current event], 
       CurrentINV10.[last event #], 
       CurrentINV10.[last event], 
       CurrentINV10.[first sales date], 
       CurrentINV10.[first receipt date], 
       CurrentINV10.[last receipt date], 
       CurrentINV10.[next receipt date], 
       CurrentINV10.[return %], 
       OrderFlow03.[item date], 
       OrderFlow03.[order #], 
       [demand units] - Iif([immediate cancel units] IS NULL, 0, 
                        [immediate cancel units]) - 
       Iif([cancel units] IS NULL, 0, [cancel units]) - 
       Iif([shipped units] IS NULL, 0, [shipped units]) 
       AS [Open Demand Units], 
       [demand cost $] - Iif([immediate cancel cost $] IS NULL, 0, 
                         [immediate cancel cost $]) - 
       Iif([cancel cost $] IS NULL, 0, [cancel cost $]) - 
       Iif([shipped cost $] IS NULL, 0, [shipped cost $]) 
       AS [Open Demand Cost $], 
       [demand $] - Iif([immediate cancel $] IS NULL, 0, [immediate cancel $]) 
       - Iif( 
       [cancel $] IS NULL, 0, [cancel $]) - 
       Iif([shipped $] IS NULL, 0, [shipped $]) AS 
       [Open Demand $], 
       [demand $] - Iif([advertised immediate cancel $] IS NULL, 0, 
                    [advertised immediate cancel $]) - Iif( 
       [advertised cancel $] IS NULL, 0, [advertised cancel $]) - Iif( 
       [advertised shipped $] IS NULL, 0, [advertised shipped $]) 
       AS 
       [Open Advertised Demand $], 
       OrderFlow03.[ordered fiscal wk], 
       OrderFlow03.[ordered fiscal month #], 
       OrderFlow03.[ordered fiscal month], 
       OrderFlow03.[ordered fiscal qtr], 
       OrderFlow03.[ordered fiscal year] 
INTO   dbo.mktbl_backorders 
FROM   vwslct_orderflow_03 AS OrderFlow03 
       INNER JOIN mktbl_currentinv10 AS CurrentINV10 
               ON OrderFlow03.inv10 = CurrentINV10.inv10 
WHERE  (( ( [demand units] - Iif([immediate cancel units] IS NULL, 0, 
                                         [immediate cancel units]) - Iif( 
                        [cancel units] IS NULL, 0, [cancel units]) - Iif( 
                      [shipped units] IS NULL, 0, [shipped units]) ) > 0 ))
					  

GO
