SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_RtnByShipDate_01]
AS
SELECT        dbo.MkTbl_DailyShip.Order#, dbo.MkTbl_DailyShip.INV10, dbo.ExpMkTbl_ProdSku.CAT_DESCRIPTION, dbo.ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, dbo.ExpMkTbl_ProdSku.[STYLE DESCRIPTION], 
                         dbo.ExpMkTbl_ProdSku.[COLOR DESCRIPTION], dbo.ExpMkTbl_ProdSku.[SIZE DESCRIPTION], dbo.ExpMkTbl_ProdSku.[Vendor #], dbo.ExpMkTbl_ProdSku.[Vendor Name], dbo.ExpMkTbl_ProdSku.[Vendor Style], 
                         dbo.MkTbl_DailyShip.Ship_Date, dbo.MkTbl_DailyShip.Status, dbo.MkTbl_DailyShip.Line_Catalog, dbo.MkTbl_DailyShip.Ship_Net$, dbo.MkTbl_DailyShip.Ship_Gross$, dbo.MkTbl_DailyShip.Ship_Cost$, 
                         dbo.MkTbl_DailyShip.Ship_Units, dbo.MkTbl_DailyShip.Ship_RsnCd, dbo.MkTbl_DailyShip.Ship_RsnDesc, dbo.MkTbl_DailyShip.Ship_Fiscal_Wk, dbo.MkTbl_DailyShip.Ship_Fiscal_Month#, 
                         dbo.MkTbl_DailyShip.Ship_Fiscal_Month, dbo.MkTbl_DailyShip.Ship_Fiscal_Qtr, dbo.MkTbl_DailyShip.Ship_Fiscal_Year, dbo.MkTbl_DailyShip.Ship_Season, dbo.MkTbl_DailyShip.Ship_YYYYWK
FROM            dbo.MkTbl_DailyShip LEFT OUTER JOIN
                         dbo.ExpMkTbl_ProdSku ON dbo.MkTbl_DailyShip.Line_Catalog = dbo.ExpMkTbl_ProdSku.OFFER_ID AND dbo.MkTbl_DailyShip.INV10 = dbo.ExpMkTbl_ProdSku.Sku
GROUP BY dbo.MkTbl_DailyShip.Order#, dbo.MkTbl_DailyShip.INV10, dbo.ExpMkTbl_ProdSku.CAT_DESCRIPTION, dbo.ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, dbo.ExpMkTbl_ProdSku.[STYLE DESCRIPTION], 
                         dbo.ExpMkTbl_ProdSku.[COLOR DESCRIPTION], dbo.ExpMkTbl_ProdSku.[SIZE DESCRIPTION], dbo.ExpMkTbl_ProdSku.[Vendor #], dbo.ExpMkTbl_ProdSku.[Vendor Name], dbo.ExpMkTbl_ProdSku.[Vendor Style], 
                         dbo.MkTbl_DailyShip.Ship_Date, dbo.MkTbl_DailyShip.Status, dbo.MkTbl_DailyShip.Line_Catalog, dbo.MkTbl_DailyShip.Ship_Net$, dbo.MkTbl_DailyShip.Ship_Gross$, dbo.MkTbl_DailyShip.Ship_Cost$, 
                         dbo.MkTbl_DailyShip.Ship_Units, dbo.MkTbl_DailyShip.Ship_RsnCd, dbo.MkTbl_DailyShip.Ship_RsnDesc, dbo.MkTbl_DailyShip.Ship_Fiscal_Wk, dbo.MkTbl_DailyShip.Ship_Fiscal_Month#, 
                         dbo.MkTbl_DailyShip.Ship_Fiscal_Month, dbo.MkTbl_DailyShip.Ship_Fiscal_Qtr, dbo.MkTbl_DailyShip.Ship_Fiscal_Year, dbo.MkTbl_DailyShip.Ship_Season, dbo.MkTbl_DailyShip.Ship_YYYYWK
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[35] 2[20] 3) )"
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
         Begin Table = "MkTbl_DailyShip"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpMkTbl_ProdSku"
            Begin Extent = 
               Top = 6
               Left = 286
               Bottom = 136
               Right = 513
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_RtnByShipDate_01', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_RtnByShipDate_01', NULL, NULL
GO
