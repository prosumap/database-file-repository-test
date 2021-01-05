SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[vwDailyUpdSlct_Current_06]
AS
SELECT        dbo.vwDailyUpdSlct_Current_05.Category, dbo.vwDailyUpdSlct_Current_05.Division, dbo.vwDailyUpdSlct_Current_05.Department, dbo.vwDailyUpdSlct_Current_05.Class, dbo.vwDailyUpdSlct_Current_05.Style, 
                         dbo.vwDailyUpdSlct_Current_05.Color, dbo.vwDailyUpdSlct_Current_05.Size, dbo.vwDailyUpdSlct_Current_05.INV5, dbo.vwDailyUpdSlct_Current_05.INV7, dbo.vwDailyUpdSlct_Current_05.INV10, dbo.vwDailyUpdSlct_Current_05.[Vendor],dbo.vwDailyUpdSlct_Current_05.[Vendor #],dbo.vwDailyUpdSlct_Current_05.[Vendor Style],
                         dbo.vwDailyUpdSlct_Current_05.[Original Price], dbo.vwDailyUpdSlct_Current_05.[Current Price], dbo.vwDailyUpdSlct_Current_05.[Current Cost], dbo.vwDailyUpdSlct_Current_05.[Current Event #], 
                         dbo.vwDailyUpdSlct_Current_05.[Current Event], dbo.vwDailyUpdSlct_Current_05.[Last Event #], dbo.vwDailyUpdSlct_Current_05.[Last Event], dbo.vwDailyUpdSlct_Current_05.[First Sales Date], 
                         dbo.MkTbl_ReceiptINV10.[First Receipt Date], dbo.MkTbl_ReceiptINV10.[Last Receipt Date], dbo.MkTbl_ReceiptINV10.[Next Receipt Date], dbo.vwDailyUpdSlct_Current_05.[Current OH Units], 
                         dbo.vwDailyUpdSlct_Current_05.[Current OO Units], dbo.vwDailyUpdSlct_Current_05.[Next 30 Days OO Units]
FROM            dbo.vwDailyUpdSlct_Current_05 LEFT OUTER JOIN
                         dbo.MkTbl_ReceiptINV10 ON dbo.vwDailyUpdSlct_Current_05.INV10 = dbo.MkTbl_ReceiptINV10.INV10
GROUP BY dbo.vwDailyUpdSlct_Current_05.Category, dbo.vwDailyUpdSlct_Current_05.Division, dbo.vwDailyUpdSlct_Current_05.Department, dbo.vwDailyUpdSlct_Current_05.Class, dbo.vwDailyUpdSlct_Current_05.Style, 
                         dbo.vwDailyUpdSlct_Current_05.Color, dbo.vwDailyUpdSlct_Current_05.Size, dbo.vwDailyUpdSlct_Current_05.INV5, dbo.vwDailyUpdSlct_Current_05.INV7, dbo.vwDailyUpdSlct_Current_05.INV10, dbo.vwDailyUpdSlct_Current_05.[Vendor],dbo.vwDailyUpdSlct_Current_05.[Vendor #],dbo.vwDailyUpdSlct_Current_05.[Vendor Style],
                         dbo.vwDailyUpdSlct_Current_05.[Original Price], dbo.vwDailyUpdSlct_Current_05.[Current Price], dbo.vwDailyUpdSlct_Current_05.[Current Cost], dbo.vwDailyUpdSlct_Current_05.[Current Event #], 
                         dbo.vwDailyUpdSlct_Current_05.[Current Event], dbo.vwDailyUpdSlct_Current_05.[Last Event #], dbo.vwDailyUpdSlct_Current_05.[Last Event], dbo.vwDailyUpdSlct_Current_05.[First Sales Date], 
                         dbo.MkTbl_ReceiptINV10.[First Receipt Date], dbo.MkTbl_ReceiptINV10.[Last Receipt Date], dbo.MkTbl_ReceiptINV10.[Next Receipt Date], dbo.vwDailyUpdSlct_Current_05.[Current OH Units], 
                         dbo.vwDailyUpdSlct_Current_05.[Current OO Units], dbo.vwDailyUpdSlct_Current_05.[Next 30 Days OO Units]
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
         Begin Table = "vwDailyUpdSlct_Current_05"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 261
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MkTbl_ReceiptINV10"
            Begin Extent = 
               Top = 6
               Left = 299
               Bottom = 136
               Right = 521
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Current_06', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Current_06', NULL, NULL
GO
