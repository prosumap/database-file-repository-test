SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_RtnByShipDate_03]
AS
SELECT        dbo.vwDailyUpdSlct_RtnByShipDate_02.Order#, dbo.vwDailyUpdSlct_RtnByShipDate_02.INV10, dbo.vwDailyUpdSlct_RtnByShipDate_02.CAT_DESCRIPTION, dbo.vwDailyUpdSlct_RtnByShipDate_02.SUBCAT_DESCRIPTION, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.[STYLE DESCRIPTION], dbo.vwDailyUpdSlct_RtnByShipDate_02.[COLOR DESCRIPTION], dbo.vwDailyUpdSlct_RtnByShipDate_02.[SIZE DESCRIPTION], 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.[Vendor #], dbo.vwDailyUpdSlct_RtnByShipDate_02.[Vendor Name], dbo.vwDailyUpdSlct_RtnByShipDate_02.[Vendor Style], dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Date, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Status, dbo.vwDailyUpdSlct_RtnByShipDate_02.Line_Catalog, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Net$, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Gross$, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Cost$, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Units, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_RsnCd, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_RsnDesc, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Fiscal_Wk, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Fiscal_Month#, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Fiscal_Month, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Fiscal_Qtr, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Fiscal_Year, dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_Season, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Ship_YYYYWK, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Date, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Net$, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Gross$, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Cost$, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Units, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_RsnCd, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_RsnDesc, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Fiscal_Wk, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Fiscal_Month#, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Fiscal_Month, 
                         dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Fiscal_Qtr, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Fiscal_Year, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_Season, dbo.vwDailyUpdSlct_RtnByShipDate_02.Rtn_YYYYWK, 
                         dbo.MkTbl_DailyExch.Exch_Date, dbo.MkTbl_DailyExch.Exch_Net$, dbo.MkTbl_DailyExch.Exch_Gross$, dbo.MkTbl_DailyExch.Exch_Cost$, dbo.MkTbl_DailyExch.Exch_Units, dbo.MkTbl_DailyExch.Exch_RsnCd, 
                         dbo.MkTbl_DailyExch.Exch_RsnDesc, dbo.MkTbl_DailyExch.Exch_Fiscal_Wk, dbo.MkTbl_DailyExch.Exch_Fiscal_Month#, dbo.MkTbl_DailyExch.Exch_Fiscal_Month, dbo.MkTbl_DailyExch.Exch_Fiscal_Qtr, 
                         dbo.MkTbl_DailyExch.Exch_Fiscal_Year, dbo.MkTbl_DailyExch.Exch_Season, dbo.MkTbl_DailyExch.Exch_YYYYWK
FROM            dbo.vwDailyUpdSlct_RtnByShipDate_02 LEFT OUTER JOIN
                         dbo.MkTbl_DailyExch ON dbo.vwDailyUpdSlct_RtnByShipDate_02.INV10 = dbo.MkTbl_DailyExch.INV10 AND dbo.vwDailyUpdSlct_RtnByShipDate_02.Order# = dbo.MkTbl_DailyExch.Order#
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[34] 2[19] 3) )"
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
         Begin Table = "MkTbl_DailyExch"
            Begin Extent = 
               Top = 14
               Left = 456
               Bottom = 144
               Right = 651
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwDailyUpdSlct_RtnByShipDate_02"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 209
               Right = 341
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
         Column = 3855
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_RtnByShipDate_03', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_RtnByShipDate_03', NULL, NULL
GO
