SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[vwDailyUpdSlct_Current_03_bkp]
AS
SELECT        dbo.vwDailyUpdSlct_Current_02.Category, dbo.vwDailyUpdSlct_Current_02.Division, dbo.vwDailyUpdSlct_Current_02.Department, dbo.vwDailyUpdSlct_Current_02.Class, dbo.vwDailyUpdSlct_Current_02.Style, 
                         dbo.vwDailyUpdSlct_Current_02.Color, dbo.vwDailyUpdSlct_Current_02.Size, dbo.vwDailyUpdSlct_Current_02.INV5, dbo.vwDailyUpdSlct_Current_02.INV7, dbo.vwDailyUpdSlct_Current_02.INV10,
						  dbo.vwDailyUpdSlct_Current_02.[Vendor],dbo.vwDailyUpdSlct_Current_02.[Vendor #],dbo.vwDailyUpdSlct_Current_02.[Vendor Style],
                      

						 dbo.vwDailyUpdSlct_Current_02.[Original Price], dbo.vwDailyUpdSlct_Current_02.[Current Price], dbo.vwDailyUpdSlct_Current_02.[Current Cost], dbo.vwDailyUpdSlct_Current_02.[Current Event #], 
                         dbo.RefTbl_Catalog.DESCRIPTION AS [Current Event], dbo.vwDailyUpdSlct_Current_02.[Last Event#] AS [Last Event #], dbo.vwDailyUpdSlct_Current_02.[Last Event], dbo.vwDailyUpdSlct_Current_02.[Current OH Units], 
                         dbo.vwDailyUpdSlct_Current_02.[Current OO Units]

						
FROM            dbo.vwDailyUpdSlct_Current_02 LEFT OUTER JOIN
                         dbo.RefTbl_Catalog ON dbo.vwDailyUpdSlct_Current_02.[Current Event #] = dbo.RefTbl_Catalog.OFFER_ID 


GROUP BY dbo.vwDailyUpdSlct_Current_02.Category, dbo.vwDailyUpdSlct_Current_02.Division, dbo.vwDailyUpdSlct_Current_02.Department, dbo.vwDailyUpdSlct_Current_02.Class, dbo.vwDailyUpdSlct_Current_02.Style, 
                         dbo.vwDailyUpdSlct_Current_02.Color, dbo.vwDailyUpdSlct_Current_02.Size, dbo.vwDailyUpdSlct_Current_02.INV5, dbo.vwDailyUpdSlct_Current_02.INV7, dbo.vwDailyUpdSlct_Current_02.INV10, vwDailyUpdSlct_Current_02.Vendor,dbo.vwDailyUpdSlct_Current_02.[Vendor],dbo.vwDailyUpdSlct_Current_02.[Vendor #],dbo.vwDailyUpdSlct_Current_02.[Vendor Style],
                         dbo.vwDailyUpdSlct_Current_02.[Original Price], dbo.vwDailyUpdSlct_Current_02.[Current Price], dbo.vwDailyUpdSlct_Current_02.[Current Cost], dbo.vwDailyUpdSlct_Current_02.[Current Event #], 
                         dbo.RefTbl_Catalog.DESCRIPTION, dbo.vwDailyUpdSlct_Current_02.[Last Event#], dbo.vwDailyUpdSlct_Current_02.[Last Event], dbo.vwDailyUpdSlct_Current_02.[Current OH Units], 
                         dbo.vwDailyUpdSlct_Current_02.[Current OO Units]
 


GO
