SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_DailyDetail_1]
AS
SELECT        Item_Date, Ord_Fiscal_Wk AS Fiscal_Wk, Ord_Fiscal_Month# AS Fiscal_Month, Ord_Fiscal_Qtr AS Fiscal_Qtr, Ord_Fiscal_Year AS Fiscal_Year, Status, COUNT(Ord#) AS [Order Count], SUM(Dmnd_Units) AS Dmnd_Units, 
                         SUM(Dmnd_Gross$) AS Dmnd_Gross$, SUM(Dmnd_Net$) AS Dmnd_Net$, SUM(Dmnd_Cost$) AS Dmnd_Cost$, SUM(ImmCx_Units) AS ImmCx_Units, SUM(ImmCxl_Gross$) AS ImmCxl_Gross$, SUM(ImmCxl_Net$) 
                         AS ImmCxl_Net$, SUM(ImmCxl_Cost$) AS ImmCxl_Cost$, SUM(0) AS Cxl_Units, SUM(0) AS Cxl_Gross$, SUM(0) AS Cxl_Net$, SUM(0) AS Cxl_Cost$, SUM(0) AS Ship_Units, SUM(0) AS Ship_Gross$, SUM(0) AS Ship_Net$, SUM(0) 
                         AS Ship_Cost$, SUM(0) AS Rtn_Units, SUM(0) AS Rtn_Gross$, SUM(0) AS Rtn_Net$, SUM(0) AS Rtn_Cost$, SUM(0) AS Exch_Units, SUM(0) AS Exch_Gross$, SUM(0) AS Exch_Net$, SUM(0) AS Exch_Cost$, 0 AS Net_Units, 
                         0 AS Net_Gross$, 0 AS Net_Net$, 0 AS Net_Cost$, SUM(Tax$) AS Tax$
FROM            dbo.vwDailyUpdSlct_DailyOrder
GROUP BY Item_Date, Ord_Fiscal_Wk, Ord_Fiscal_Month#, Ord_Fiscal_Qtr, Ord_Fiscal_Year, Status
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
         Begin Table = "vwDailyUpdSlct_DailyOrder"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 245
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyDetail_1', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyDetail_1', NULL, NULL
GO
