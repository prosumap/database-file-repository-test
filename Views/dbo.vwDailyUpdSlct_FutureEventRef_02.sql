SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_FutureEventRef_02]
AS
SELECT        dbo.vwDailyUpdSlct_FutureEventRef_01.OFFER_ID AS [Event #], dbo.fProperCase(dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.DESCRIPTION, NULL, 3) AS [Event Description], 
                         dbo.fProperCase(dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT GROUP], NULL, 3) AS Event, dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT YEAR] AS [Event Year], 
                         dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.ANTICIPATED_DROP_DATE AS [Event Go Live], dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[TARGET END DATE] AS [Event End Date], 
                         dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL WEEK], dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL YEAR], 
                         dbo.fProperCase(CASE WHEN [cat_description] = 'non-Apparel' THEN [cat_description] WHEN [cat_description] = 'Swim' THEN [cat_description] WHEN [cat_description] = 'Home + Gift' THEN [cat_description] ELSE 'Apparel' END,
                          NULL, 3) AS Division, dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.CAT_DESCRIPTION, NULL, 3) AS Department, dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.SUBCAT_DESCRIPTION, NULL, 3) 
                         AS Class, dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.[STYLE DESCRIPTION], NULL, 3) AS Style, dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.[COLOR DESCRIPTION], NULL, 3) AS Color, 
                         dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.[SIZE DESCRIPTION], NULL, 3) AS Size, dbo.vwDailyUpdSlct_FutureEventRef_01.INV5, dbo.vwDailyUpdSlct_FutureEventRef_01.INV7, 
                         dbo.vwDailyUpdSlct_FutureEventRef_01.Sku AS INV10, dbo.vwDailyUpdSlct_FutureEventRef_01.COST_EA AS Cost, dbo.vwDailyUpdSlct_FutureEventRef_01.INET_OriginalPrice AS [Original Price], 
                         dbo.vwDailyUpdSlct_FutureEventRef_01.INET_Price AS [Current Price], dbo.vwDailyUpdSlct_FutureEventRef_01.INET_Catalog AS [Current Event], 
                         CASE WHEN [INET_Status] = 'Active' THEN '1 - Active' WHEN [INET_Status] = 'Hold' THEN '2 - Hold' ELSE '3- Delete' END AS [Current Status], dbo.vwDailyUpdSlct_FutureEventRef_01.[OH UNITS] AS [OH Units], 
                         SUM(dbo.vwDailyUpdSlct_FutureEventRef_01.[OO U]) AS [OO Units]
FROM            dbo.vwDailyUpdSlct_FutureEventRef_01 LEFT OUTER JOIN
                         dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting ON dbo.vwDailyUpdSlct_FutureEventRef_01.OFFER_ID = dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.OFFER_ID
GROUP BY dbo.vwDailyUpdSlct_FutureEventRef_01.OFFER_ID, dbo.fProperCase(dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.DESCRIPTION, NULL, 3), 
                         dbo.fProperCase(dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT GROUP], NULL, 3), dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT YEAR], 
                         dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.ANTICIPATED_DROP_DATE, dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[TARGET END DATE], dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL WEEK], 
                         dbo.vwDailyUpdRefTbl_Catalog_DB_Reporting.[EVENT BEGIN FISCAL YEAR], 
                         dbo.fProperCase(CASE WHEN [cat_description] = 'non-Apparel' THEN [cat_description] WHEN [cat_description] = 'Swim' THEN [cat_description] WHEN [cat_description] = 'Home + Gift' THEN [cat_description] ELSE 'Apparel' END,
                          NULL, 3), dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.CAT_DESCRIPTION, NULL, 3), dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.SUBCAT_DESCRIPTION, NULL, 3), 
                         dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.[STYLE DESCRIPTION], NULL, 3), dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.[COLOR DESCRIPTION], NULL, 3), 
                         dbo.fProperCase(dbo.vwDailyUpdSlct_FutureEventRef_01.[SIZE DESCRIPTION], NULL, 3), dbo.vwDailyUpdSlct_FutureEventRef_01.INV5, dbo.vwDailyUpdSlct_FutureEventRef_01.INV7, 
                         dbo.vwDailyUpdSlct_FutureEventRef_01.Sku, dbo.vwDailyUpdSlct_FutureEventRef_01.COST_EA, dbo.vwDailyUpdSlct_FutureEventRef_01.INET_OriginalPrice, dbo.vwDailyUpdSlct_FutureEventRef_01.INET_Price, 
                         dbo.vwDailyUpdSlct_FutureEventRef_01.INET_Catalog, CASE WHEN [INET_Status] = 'Active' THEN '1 - Active' WHEN [INET_Status] = 'Hold' THEN '2 - Hold' ELSE '3- Delete' END, 
                         dbo.vwDailyUpdSlct_FutureEventRef_01.[OH UNITS]
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwDailyUpdSlct_FutureEventRef_01"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwDailyUpdRefTbl_Catalog_DB_Reporting"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 136
               Right = 552
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_02', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_02', NULL, NULL
GO
