SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_Actual]
AS
SELECT        dbo.F21_VDRS_ORDER_DETAIL.OFFER_ID, dbo.MkTbl_SKUMaster.CAT_DESCRIPTION, dbo.MkTbl_SKUMaster.SUBCAT_DESCRIPTION, dbo.MkTbl_SKUMaster.[STYLE DESCRIPTION], 
                         dbo.MkTbl_SKUMaster.[Offer Product Id] AS INV5, dbo.MkTbl_SKUMaster.[COLOR DESCRIPTION], LEFT(dbo.MkTbl_SKUMaster.Sku, 7) AS INV7, dbo.MkTbl_SKUMaster.[SIZE DESCRIPTION], dbo.MkTbl_SKUMaster.Sku AS INV10, 
                         SUM(dbo.F21_VDRS_ORDER_DETAIL.EXT_PRICE) AS [GROSS DEMAND], SUM(dbo.F21_VDRS_ORDER_DETAIL.EXT_COST) AS [DEMAND COST], SUM(dbo.F21_VDRS_ORDER_DETAIL.QUANTITY) AS [DEMAND UNITS], 
                         SUM(dbo.F21_VDRS_ORDER_DETAIL.SH_REVENUE) AS [NET DEMAND], SUM(dbo.F21_VDRS_ORDER_DETAIL.CANCEL_QUANTITY) AS [CANCEL UNITS], SUM(dbo.F21_VDRS_ORDER_DETAIL.SHIP_QUANTITY) 
                         AS [SHIPPED UNITS], SUM(dbo.F21_VDRS_ORDER_DETAIL.RETURN_QUANTITY) AS [RETURN UNITS], dbo.MkTbl_SKUMaster.UNIT_PRICE, dbo.MkTbl_SKUMaster.COST_EA
FROM            dbo.F21_VDRS_ORDER_DETAIL LEFT OUTER JOIN
                         dbo.MkTbl_SKUMaster ON dbo.F21_VDRS_ORDER_DETAIL.SKU = dbo.MkTbl_SKUMaster.Sku AND dbo.F21_VDRS_ORDER_DETAIL.OFFER_ID = dbo.MkTbl_SKUMaster.OFFER_ID
GROUP BY dbo.F21_VDRS_ORDER_DETAIL.OFFER_ID, dbo.MkTbl_SKUMaster.CAT_DESCRIPTION, dbo.MkTbl_SKUMaster.SUBCAT_DESCRIPTION, dbo.MkTbl_SKUMaster.[STYLE DESCRIPTION], dbo.MkTbl_SKUMaster.[Offer Product Id], 
                         dbo.MkTbl_SKUMaster.[COLOR DESCRIPTION], LEFT(dbo.MkTbl_SKUMaster.Sku, 7), dbo.MkTbl_SKUMaster.[SIZE DESCRIPTION], dbo.MkTbl_SKUMaster.Sku, dbo.MkTbl_SKUMaster.UNIT_PRICE, 
                         dbo.MkTbl_SKUMaster.COST_EA
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
         Begin Table = "F21_VDRS_ORDER_DETAIL"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 340
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MkTbl_SKUMaster"
            Begin Extent = 
               Top = 6
               Left = 378
               Bottom = 136
               Right = 605
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Actual', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Actual', NULL, NULL
GO
