SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_DailyDetail_3]
AS
SELECT        dbo.vwDailyUpdSlct_DailyDetail_2.Item_Date, dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Wk, dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Month, dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Qtr, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Year, dbo.vwDailyUpdSlct_DailyDetail_2.Status, dbo.vwDailyUpdSlct_DailyDetail_2.[Order Count], dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.ImmCx_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.ImmCxl_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.ImmCxl_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.ImmCxl_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Cost$, SUM(dbo.MkTbl_DailyRtn.Rtn_Units) AS Rtn_Units, 
                         SUM(dbo.MkTbl_DailyRtn.Rtn_Gross$) AS Rtn_Gross$, SUM(dbo.MkTbl_DailyRtn.Rtn_Net$) AS Rtn_Net$, SUM(dbo.MkTbl_DailyRtn.Rtn_Cost$) AS Rtn_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Net_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Net_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Net_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Net_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Tax$
FROM            dbo.vwDailyUpdSlct_DailyDetail_2 LEFT OUTER JOIN
                         dbo.MkTbl_DailyRtn ON dbo.vwDailyUpdSlct_DailyDetail_2.Item_Date = dbo.MkTbl_DailyRtn.Rtn_Date AND dbo.vwDailyUpdSlct_DailyDetail_2.Status = dbo.MkTbl_DailyRtn.Status
GROUP BY dbo.vwDailyUpdSlct_DailyDetail_2.Item_Date, dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Wk, dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Month, dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Qtr, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Fiscal_Year, dbo.vwDailyUpdSlct_DailyDetail_2.Status, dbo.vwDailyUpdSlct_DailyDetail_2.[Order Count], dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Dmnd_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.ImmCx_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.ImmCxl_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.ImmCxl_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.ImmCxl_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Cxl_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Ship_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Exch_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Net_Units, 
                         dbo.vwDailyUpdSlct_DailyDetail_2.Net_Gross$, dbo.vwDailyUpdSlct_DailyDetail_2.Net_Net$, dbo.vwDailyUpdSlct_DailyDetail_2.Net_Cost$, dbo.vwDailyUpdSlct_DailyDetail_2.Tax$
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
         Begin Table = "MkTbl_DailyRtn"
            Begin Extent = 
               Top = 0
               Left = 476
               Bottom = 262
               Right = 681
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwDailyUpdSlct_DailyDetail_2"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 247
               Right = 351
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyDetail_3', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_DailyDetail_3', NULL, NULL
GO
