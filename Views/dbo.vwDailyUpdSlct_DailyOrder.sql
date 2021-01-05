SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_DailyOrder]
AS
SELECT        LEFT(dbo.MkTbl_Ord_Dtl.ORDDTL, 9) AS Ord#, dbo.MkTbl_Ord_Dtl.SGORDNO AS Chico_Ord#, LTRIM(RTRIM(dbo.MkTbl_Ord_Dtl.Cat)) AS Line_Catalog, LEFT(LTRIM(RTRIM(dbo.MkTbl_Ord_Dtl.[Source Cd])), 3) AS Hdr_Catalog, 
                         LTRIM(RTRIM(dbo.MkTbl_Ord_Dtl.[Source Cd])) AS SourceCd, dbo.MkTbl_Ord_Dtl.ItemDt AS Item_Date, dbo.MkTbl_Ord_Dtl.GPriceDD AS Ticket, dbo.MkTbl_Ord_Dtl.[Net Price] AS AUR, dbo.MkTbl_Ord_Dtl.InvCostDD AS Cost, 
                         dbo.MkTbl_Ord_Dtl.Ordrd AS Dmnd_Units, dbo.MkTbl_Ord_Dtl.[Net Price] * dbo.MkTbl_Ord_Dtl.Ordrd AS Dmnd_Net$, dbo.MkTbl_Ord_Dtl.GPriceDD * dbo.MkTbl_Ord_Dtl.Ordrd AS Dmnd_Gross$, 
                         dbo.MkTbl_Ord_Dtl.InvCostDD * dbo.MkTbl_Ord_Dtl.Ordrd AS Dmnd_Cost$, dbo.MkTbl_Ord_Dtl.TaxDD AS Tax$, dbo.MkTbl_Ord_Dtl.ShipHandDD AS ShipHnd$, dbo.MkTbl_Ord_Dtl.Base# AS INV5, 
                         LEFT(LTRIM(RTRIM(dbo.MkTbl_Ord_Dtl.InvID)), 7) AS INV7, LTRIM(RTRIM(dbo.MkTbl_Ord_Dtl.InvID)) AS INV10, dbo.MkTbl_Ord_Dtl.LongDescTX AS Item_Desc, dbo.MkTbl_Ord_Dtl.[Inet Ord ID] AS Inet_Ord#, 
                         dbo.MkTbl_Ord_Dtl.POS AS ImmCx_Units, dbo.MkTbl_Ord_Dtl.POS * dbo.MkTbl_Ord_Dtl.[Net Price] AS ImmCxl_Net$, dbo.MkTbl_Ord_Dtl.POS * dbo.MkTbl_Ord_Dtl.GPriceDD AS ImmCxl_Gross$, 
                         dbo.MkTbl_Ord_Dtl.POS * dbo.MkTbl_Ord_Dtl.InvCostDD AS ImmCxl_Cost$, LTRIM(RTRIM(dbo.RefTbl_Calendar.FiscalWk)) AS Ord_Fiscal_Wk, LTRIM(RTRIM(dbo.RefTbl_Calendar.MonthNo)) AS Ord_Fiscal_Month#, 
                         dbo.RefTbl_Calendar.MonthDesc AS Ord_Fiscal_Month, LTRIM(RTRIM(dbo.RefTbl_Calendar.Qtr)) AS Ord_Fiscal_Qtr, LTRIM(RTRIM(dbo.RefTbl_Calendar.Year)) AS Ord_Fiscal_Year, 
                         dbo.RefTbl_Calendar.[Season of Year] AS Ord_Season, LTRIM(RTRIM(dbo.RefTbl_Calendar.YYYYWK)) AS Ord_YYYYWK, CASE LEFT(LTRIM(RTRIM([Cat])), 1) WHEN '2' THEN 'MD' ELSE 'FP' END AS Status
FROM            dbo.RefTbl_Calendar RIGHT OUTER JOIN
                         dbo.MkTbl_Ord_Dtl ON dbo.RefTbl_Calendar.Date = dbo.MkTbl_Ord_Dtl.ItemDt
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[44] 2[20] 3) )"
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
         Begin Table = "MkTbl_Ord_Dtl"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 136
               Right = 455
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
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
         Column = 6030
         Alias = 1710
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyOrder', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyOrder', NULL, NULL
GO
