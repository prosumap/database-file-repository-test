SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_Trans2]
AS
SELECT        dbo.MkTbl_Trans.ItemTransBP, dbo.MkTbl_Trans.OhId, dbo.MkTbl_Trans.SkuId, dbo.MkTbl_Trans.DSeq, dbo.MkTbl_Trans.Type, dbo.MkTbl_Trans.Cdatedt, dbo.MkTbl_Trans.ItemCatId, dbo.MkTbl_Trans.OdNpriceDD AS AUR, 
                         dbo.MkTbl_Trans.OdNpriceDD * dbo.MkTbl_Trans.TransQQ AS Net$, dbo.MkTbl_Trans.GpriceDD AS AUT, dbo.MkTbl_Trans.GpriceDD * dbo.MkTbl_Trans.TransQQ AS Gross$, dbo.MkTbl_Trans.TransQQ, 
                         dbo.MkTbl_Trans.CustRsnCd, dbo.MkTbl_Trans.[Rsn Desc], dbo.RefTbl_Calendar.FiscalWk, dbo.RefTbl_Calendar.MonthNo, dbo.RefTbl_Calendar.MonthDesc, dbo.RefTbl_Calendar.Qtr, dbo.RefTbl_Calendar.Year, 
                         dbo.RefTbl_Calendar.[Season of Year], dbo.RefTbl_Calendar.YYYYWK, CASE LEFT(MkTbl_Trans.ItemCatId, 1) WHEN '2' THEN 'MD' ELSE 'FP' END AS Status
FROM            dbo.RefTbl_Calendar INNER JOIN
                         dbo.MkTbl_Trans ON dbo.RefTbl_Calendar.Date = dbo.MkTbl_Trans.Cdatedt
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used in Weekly Updates 03', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Trans2', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[29] 2[20] 3) )"
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
         Begin Table = "RefTbl_Calendar"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MkTbl_Trans"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 136
               Right = 437
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
         Column = 7830
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Trans2', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Trans2', NULL, NULL
GO
