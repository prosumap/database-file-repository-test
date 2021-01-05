SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdRefTbl_Catalog_Temp1]
AS
SELECT        dbo.RefTbl_Catalog.OFFER_ID, dbo.RefTbl_Catalog.DIVISION_ID, dbo.RefTbl_Catalog.DESCRIPTION, dbo.RefTbl_Catalog.MACRO_CIRCULATION, dbo.RefTbl_Catalog.MACRO_ORDERS, dbo.RefTbl_Catalog.MACRO_UNITS, 
                         dbo.RefTbl_Catalog.MACRO_REVENUE, dbo.RefTbl_Calendar.FiscalWk AS [GO LIVE FISCAL WEEK], dbo.RefTbl_Calendar.Year AS [GO LIVE FISCAL YEAR], dbo.RefTbl_Catalog.ANTICIPATED_DROP_DATE, 
                         dbo.RefTbl_Catalog.ANTICIPATED_PERIOD_1_DATE, dbo.RefTbl_Catalog.PAGES, dbo.RefTbl_Catalog.PERCENT_COMPLETE, dbo.RefTbl_Catalog.OFFER_COST, dbo.RefTbl_Catalog.[PRICE STATUS], 
                         dbo.RefTbl_Catalog.ANTICIPATED_END_DATE, dbo.RefTbl_Catalog.CrOn
FROM            dbo.RefTbl_Catalog LEFT OUTER JOIN
                         dbo.RefTbl_Calendar ON dbo.RefTbl_Catalog.ANTICIPATED_DROP_DATE = dbo.RefTbl_Calendar.Date
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
         Begin Table = "RefTbl_Catalog"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 291
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RefTbl_Calendar"
            Begin Extent = 
               Top = 6
               Left = 329
               Bottom = 136
               Right = 520
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
      Begin ColumnWidths = 11
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdRefTbl_Catalog_Temp1', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdRefTbl_Catalog_Temp1', NULL, NULL
GO
