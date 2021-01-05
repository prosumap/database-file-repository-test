SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_PoClsd_2]
AS
SELECT        dbo.vwDailyUpdSlct_PoClsd_1.CATALOG, dbo.vwDailyUpdSlct_PoClsd_1.[PO #], dbo.vwDailyUpdSlct_PoClsd_1.[REQ #], dbo.vwDailyUpdSlct_PoClsd_1.NDC, dbo.vwDailyUpdSlct_PoClsd_1.[RECEIPT DATE], 
                         dbo.vwDailyUpdSlct_PoClsd_1.[ORIGINAL NDC], dbo.vwDailyUpdSlct_PoClsd_1.[APPROVED DATE], dbo.vwDailyUpdSlct_PoClsd_1.[GROUP CODE], dbo.vwDailyUpdSlct_PoClsd_1.[MERCH TYPE], 
                         dbo.vwDailyUpdSlct_PoClsd_1.[STYLE DESC], dbo.vwDailyUpdSlct_PoClsd_1.INV5, dbo.vwDailyUpdSlct_PoClsd_1.[COLOR DESC], dbo.vwDailyUpdSlct_PoClsd_1.INV7, dbo.vwDailyUpdSlct_PoClsd_1.[SIZE DESC], 
                         dbo.vwDailyUpdSlct_PoClsd_1.INV10, dbo.vwDailyUpdSlct_PoClsd_1.[VENDOR #], CASE WHEN [RefTbl_OPCSVendor].[Nametx] IS NULL 
                         THEN [vwDailyUpdSlct_UniqueVendor].[NameTx] ELSE [RefTbl_OPCSVendor].[Nametx] END AS VENDOR, dbo.vwDailyUpdSlct_PoClsd_1.[VENDOR STYLE #], dbo.vwDailyUpdSlct_PoClsd_1.[COST EA], 
                         dbo.vwDailyUpdSlct_PoClsd_1.[PO COST], dbo.vwDailyUpdSlct_PoClsd_1.[ORIG ORDERED UNITS], dbo.vwDailyUpdSlct_PoClsd_1.[CXL UNITS], dbo.vwDailyUpdSlct_PoClsd_1.[OO UNITS], 
                         dbo.vwDailyUpdSlct_PoClsd_1.[OO COST], dbo.vwDailyUpdSlct_PoClsd_1.[RECEIVED UNITS], dbo.vwDailyUpdSlct_PoClsd_1.[RECEIVED COST], dbo.vwDailyUpdSlct_PoClsd_1.DISCOUNTS, 
                         dbo.vwDailyUpdSlct_PoClsd_1.TERMS, dbo.RefTbl_OPCSVendor.TERMSDESC AS [TERMS DESC]
FROM            dbo.vwDailyUpdSlct_PoClsd_1 LEFT OUTER JOIN
                         dbo.RefTbl_OPCSVendor ON dbo.vwDailyUpdSlct_PoClsd_1.TERMS = dbo.RefTbl_OPCSVendor.Terms AND dbo.vwDailyUpdSlct_PoClsd_1.[VENDOR #] = dbo.RefTbl_OPCSVendor.VENDORFL LEFT OUTER JOIN
                         dbo.vwDailyUpdSlct_UniqueVendor ON dbo.vwDailyUpdSlct_PoClsd_1.[VENDOR #] = dbo.vwDailyUpdSlct_UniqueVendor.VENDOR
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[31] 2[20] 3) )"
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
         Begin Table = "RefTbl_OPCSVendor"
            Begin Extent = 
               Top = 6
               Left = 282
               Bottom = 136
               Right = 452
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwDailyUpdSlct_UniqueVendor"
            Begin Extent = 
               Top = 6
               Left = 490
               Bottom = 136
               Right = 660
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwDailyUpdSlct_PoClsd_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 244
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 3150
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_PoClsd_2', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_PoClsd_2', NULL, NULL
GO
