SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_DailyDetail_5]
AS
SELECT        dbo.vwDailyUpdSlct_DailyDetail_4.Item_Date, dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Wk, dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Month, dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Qtr, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Year, dbo.vwDailyUpdSlct_DailyDetail_4.Status, dbo.vwDailyUpdSlct_DailyDetail_4.[Order Count], dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.ImmCx_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.ImmCxl_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.ImmCxl_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.ImmCxl_Cost$, SUM(dbo.MkTbl_DailyCxl.Cxl_Units) AS Cxl_Units, 
                         SUM(dbo.MkTbl_DailyCxl.Cxl_Gross$) AS Cxl_Gross$, SUM(dbo.MkTbl_DailyCxl.Cxl_Net$) AS Cxl_Net$, SUM(dbo.MkTbl_DailyCxl.Cxl_Cost$) AS Cxl_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Net_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Net_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Net_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Net_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Tax$
FROM            dbo.vwDailyUpdSlct_DailyDetail_4 LEFT OUTER JOIN
                         dbo.MkTbl_DailyCxl ON dbo.vwDailyUpdSlct_DailyDetail_4.Item_Date = dbo.MkTbl_DailyCxl.Cxl_Date AND dbo.vwDailyUpdSlct_DailyDetail_4.Status = dbo.MkTbl_DailyCxl.Status
GROUP BY dbo.vwDailyUpdSlct_DailyDetail_4.Item_Date, dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Wk, dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Month, dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Qtr, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Fiscal_Year, dbo.vwDailyUpdSlct_DailyDetail_4.Status, dbo.vwDailyUpdSlct_DailyDetail_4.[Order Count], dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Dmnd_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.ImmCx_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.ImmCxl_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.ImmCxl_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.ImmCxl_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Ship_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Rtn_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Exch_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Net_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_4.Net_Gross$, dbo.vwDailyUpdSlct_DailyDetail_4.Net_Net$, dbo.vwDailyUpdSlct_DailyDetail_4.Net_Cost$, dbo.vwDailyUpdSlct_DailyDetail_4.Tax$
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
         Begin Table = "vwDailyUpdSlct_DailyDetail_4"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MkTbl_DailyCxl"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 136
               Right = 465
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyDetail_5', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyDetail_5', NULL, NULL
GO
