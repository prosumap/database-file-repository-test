SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_CordDtl_2]
AS
SELECT        dbo.vwDailyUpdSlct_CordDtl.[ORDER #], dbo.vwDailyUpdSlct_CordDtl.OrdDtl, dbo.vwDailyUpdSlct_CordDtl.SgOrdNo, dbo.MkTbl_OrdSrcCd.[CUSTOMER #], dbo.vwDailyUpdSlct_CordDtl.Cat, dbo.MkTbl_OrdSrcCd.[SOURCE CD], 
                         dbo.MkTbl_OrdSrcCd.[SOURCE DESC], dbo.MkTbl_OrdSrcCd.[ALT SOURCE CD], dbo.MkTbl_OrdSrcCd.[ALT SOURCE DESC], dbo.vwDailyUpdSlct_CordDtl.[Order Date], dbo.vwDailyUpdSlct_CordDtl.ItemDt, 
                         dbo.vwDailyUpdSlct_CordDtl.Ordrd, dbo.vwDailyUpdSlct_CordDtl.[Net Price], dbo.vwDailyUpdSlct_CordDtl.GpriceDD, dbo.vwDailyUpdSlct_CordDtl.InvCostDD, dbo.vwDailyUpdSlct_CordDtl.TaxDD, 
                         dbo.vwDailyUpdSlct_CordDtl.ShipHandDD, dbo.vwDailyUpdSlct_CordDtl.Base#, dbo.vwDailyUpdSlct_CordDtl.InvId, dbo.vwDailyUpdSlct_CordDtl.LongDescTx, dbo.vwDailyUpdSlct_CordDtl.[Inet Ord ID], 
                         dbo.MkTbl_OrdSrcCd.[SALES REP], dbo.vwDailyUpdSlct_CordDtl.POS, dbo.vwDailyUpdSlct_CordDtl.[Dtl Seq]
FROM            dbo.MkTbl_OrdSrcCd RIGHT OUTER JOIN
                         dbo.vwDailyUpdSlct_CordDtl ON dbo.MkTbl_OrdSrcCd.[ORDER #] = dbo.vwDailyUpdSlct_CordDtl.[ORDER #]
WHERE        (dbo.vwDailyUpdSlct_CordDtl.ItemDt > GETDATE() - 11)
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
         Begin Table = "MkTbl_OrdSrcCd"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwDailyUpdSlct_CordDtl"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 136
               Right = 484
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
         Filter = 2610
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_CordDtl_2', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_CordDtl_2', NULL, NULL
GO
