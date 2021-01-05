SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_PoClsd_1]
AS
SELECT        LEFT(dbo.RefTbl_OPCSPOClsd.POCLOSEDBP, 3) AS CATALOG, dbo.RefTbl_OPCSPOClsd.POCLOSEDBP AS [PO #], dbo.RefTbl_OPCSPOClsd.F21reqid AS [REQ #], dbo.RefTbl_OPCSPOClsd.[Date Due] AS NDC, 
                         dbo.RefTbl_OPCSPOClsd.DateRecd AS [RECEIPT DATE], NULL AS [ORIGINAL NDC], dbo.RefTbl_OPCSPOClsd.Approveddt AS [APPROVED DATE], dbo.MkTbl_SKUMaster.CAT_DESCRIPTION AS [GROUP CODE], 
                         dbo.MkTbl_SKUMaster.SUBCAT_DESCRIPTION AS [MERCH TYPE], dbo.MkTbl_SKUMaster.[STYLE DESCRIPTION] AS [STYLE DESC], dbo.MkTbl_SKUMaster.[Offer Product Id] AS INV5, 
                         dbo.MkTbl_SKUMaster.[COLOR DESCRIPTION] AS [COLOR DESC], LEFT(dbo.RefTbl_OPCSPOClsd.[Item No], 7) AS INV7, dbo.MkTbl_SKUMaster.[SIZE DESCRIPTION] AS [SIZE DESC], dbo.RefTbl_OPCSPOClsd.[Item No] AS INV10, 
                         dbo.MkTbl_SKUMaster.[Vendor #] AS [VENDOR #], dbo.MkTbl_SKUMaster.[Vendor Style] AS [VENDOR STYLE #], dbo.MkTbl_SKUMaster.COST_EA AS [COST EA], dbo.RefTbl_OPCSPOClsd.Unitcostdd AS [PO COST], 
                         dbo.RefTbl_OPCSPOClsd.Ordqq AS [ORIG ORDERED UNITS], dbo.RefTbl_OPCSPOClsd.CX AS [CXL UNITS], CASE WHEN [ORDqq] - [cx] - [qtyrecd] > 0 THEN [ORDqq] - [cx] - [qtyrecd] ELSE 0 END AS [OO UNITS], 
                         CASE WHEN ([ORDqq] - [cx] - [qtyrecd]) > 0 THEN ([ORDqq] - [cx] - [qtyrecd]) * [unitcostdd] ELSE 0 END AS [OO COST], CASE WHEN [qtyrecd] > 0 THEN [qtyrecd] ELSE 0 END AS [RECEIVED UNITS], 
                         CASE WHEN [qtyrecd] > 0 THEN [qtyrecd] * [unitcostdd] ELSE 0 END AS [RECEIVED COST], dbo.RefTbl_OPCSPOClsd.Terms AS TERMS, 
                         dbo.RefTbl_OPCSPOClsd.Discountdd + CASE WHEN [discountpc] > 0 THEN ([discountpc] * [unitcostdd]) * ([ordqq] - [cx]) ELSE 0 END AS DISCOUNTS
FROM            dbo.RefTbl_OPCSPOClsd LEFT OUTER JOIN
                         dbo.MkTbl_SKUMaster ON dbo.RefTbl_OPCSPOClsd.[Item No] = dbo.MkTbl_SKUMaster.Sku
GROUP BY LEFT(dbo.RefTbl_OPCSPOClsd.POCLOSEDBP, 3), dbo.RefTbl_OPCSPOClsd.POCLOSEDBP, dbo.RefTbl_OPCSPOClsd.F21reqid, dbo.RefTbl_OPCSPOClsd.[Date Due], dbo.RefTbl_OPCSPOClsd.DateRecd, 
                         dbo.RefTbl_OPCSPOClsd.Approveddt, dbo.MkTbl_SKUMaster.CAT_DESCRIPTION, dbo.MkTbl_SKUMaster.SUBCAT_DESCRIPTION, dbo.MkTbl_SKUMaster.[STYLE DESCRIPTION], dbo.MkTbl_SKUMaster.[Offer Product Id], 
                         dbo.MkTbl_SKUMaster.[COLOR DESCRIPTION], LEFT(dbo.RefTbl_OPCSPOClsd.[Item No], 7), dbo.MkTbl_SKUMaster.[SIZE DESCRIPTION], dbo.RefTbl_OPCSPOClsd.[Item No], dbo.MkTbl_SKUMaster.[Vendor #], 
                         dbo.MkTbl_SKUMaster.[Vendor Style], dbo.MkTbl_SKUMaster.COST_EA, dbo.RefTbl_OPCSPOClsd.Unitcostdd, dbo.RefTbl_OPCSPOClsd.Ordqq, dbo.RefTbl_OPCSPOClsd.CX, dbo.RefTbl_OPCSPOClsd.Terms, 
                         dbo.RefTbl_OPCSPOClsd.Discountdd + CASE WHEN [discountpc] > 0 THEN ([discountpc] * [unitcostdd]) * ([ordqq] - [cx]) ELSE 0 END, CASE WHEN [ORDqq] - [cx] - [qtyrecd] > 0 THEN [ORDqq] - [cx] - [qtyrecd] ELSE 0 END, 
                         CASE WHEN ([ORDqq] - [cx] - [qtyrecd]) > 0 THEN ([ORDqq] - [cx] - [qtyrecd]) * [unitcostdd] ELSE 0 END, CASE WHEN [qtyrecd] > 0 THEN [qtyrecd] ELSE 0 END, CASE WHEN [qtyrecd] > 0 THEN [qtyrecd] * [unitcostdd] ELSE 0 END
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[30] 2[20] 3) )"
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
         Begin Table = "RefTbl_OPCSPOClsd"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MkTbl_SKUMaster"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 457
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
         Column = 5640
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_PoClsd_1', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_PoClsd_1', NULL, NULL
GO
