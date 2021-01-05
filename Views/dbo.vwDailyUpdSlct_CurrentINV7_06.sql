SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vwDailyUpdSlct_CurrentINV7_06]
AS
SELECT        dbo.MkTbl_CurrentINV10.Category, dbo.MkTbl_CurrentINV10.Division, dbo.MkTbl_CurrentINV10.Department, dbo.MkTbl_CurrentINV10.Class, dbo.MkTbl_CurrentINV10.Style, dbo.MkTbl_CurrentINV10.Color, 
                         dbo.MkTbl_CurrentINV10.INV5, dbo.MkTbl_CurrentINV10.INV7,FIRST_VALUE ([Vendor]) OVER (Partition by [INV10]  ORDER BY [Vendor]) as [Vendor],
FIRST_VALUE ([Vendor #]) OVER (Partition by [INV10]  ORDER BY [Vendor #]) as [Vendor #],
FIRST_VALUE ([Vendor Style]) OVER (Partition by [INV10]  ORDER BY [Vendor Style]) as [Vendor Style],
						 --MkTbl_CurrentINV10.[Vendor #] AS [Vendor #], MkTbl_CurrentINV10.Vendor AS Vendor,MkTbl_CurrentINV10.[Vendor Style] AS [Vendor Style],
						 MAX(dbo.MkTbl_CurrentINV10.[Original Price]) AS [Original Price], MAX(dbo.MkTbl_CurrentINV10.[Current Price]) AS [Current Price], 
                         MAX(dbo.MkTbl_CurrentINV10.[Current Cost]) AS [Current Cost], SUM(dbo.MkTbl_CurrentINV10.[Current OH Units]) AS [Current OH Units], SUM(dbo.MkTbl_CurrentINV10.[Current OO Units]) AS [Current OO Units], 
                         SUM(dbo.MkTbl_CurrentINV10.[Next 30 Days OO Units]) AS [Next 30 Days OO Units], SUM(dbo.MkTbl_CurrentINV10.[Current Backorder Units]) AS [Current Backorder Units], 
                         SUM(dbo.MkTbl_CurrentINV10.[Current Backorder Cost $]) AS [Current Backorder Cost $], SUM(dbo.MkTbl_CurrentINV10.[Current Backorder $]) AS [Current Backorder $], dbo.MkTbl_ReturnsINV7.[Return %], 
                         MIN(dbo.MkTbl_CurrentINV10.[First Sales Date]) AS [First Sales Date], MIN(dbo.MkTbl_CurrentINV10.[First Receipt Date]) AS [First Receipt Date], MAX(dbo.MkTbl_CurrentINV10.[Last Receipt Date]) AS [Last Receipt Date], 
                         MIN(dbo.MkTbl_CurrentINV10.[Next Receipt Date]) AS [Next Receipt Date]
FROM            dbo.MkTbl_ReturnsINV7 RIGHT OUTER JOIN
                         dbo.MkTbl_CurrentINV10 ON dbo.MkTbl_ReturnsINV7.INV7 = dbo.MkTbl_CurrentINV10.INV7
GROUP BY dbo.MkTbl_CurrentINV10.Category, dbo.MkTbl_CurrentINV10.Division, dbo.MkTbl_CurrentINV10.Department, dbo.MkTbl_CurrentINV10.Class, dbo.MkTbl_CurrentINV10.Style, dbo.MkTbl_CurrentINV10.Color, 
                         dbo.MkTbl_CurrentINV10.INV5, dbo.MkTbl_CurrentINV10.INV7,dbo.MkTbl_CurrentINV10.INV10,
						 MkTbl_CurrentINV10.[Vendor #], MkTbl_CurrentINV10.Vendor, MkTbl_CurrentINV10.[Vendor Style] ,
						 dbo.MkTbl_ReturnsINV7.[Return %]
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[28] 2[20] 3) )"
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
         Begin Table = "MkTbl_ReturnsINV7"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MkTbl_CurrentINV10"
            Begin Extent = 
               Top = 3
               Left = 417
               Bottom = 133
               Right = 654
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_CurrentINV7_06', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_CurrentINV7_06', NULL, NULL
GO
