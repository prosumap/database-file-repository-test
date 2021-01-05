SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_Current_01]
AS
SELECT        dbo.ExpMkTbl_ProdSku.CAT_DESCRIPTION AS Department, dbo.ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION AS Class, dbo.ExpMkTbl_ProdSku.[STYLE DESCRIPTION] AS Style, 
                         dbo.ExpMkTbl_ProdSku.[COLOR DESCRIPTION] AS Color, dbo.ExpMkTbl_ProdSku.[SIZE DESCRIPTION] AS Size, dbo.ExpMkTbl_ProdSku.INV5, dbo.ExpMkTbl_ProdSku.INV7, dbo.ExpMkTbl_ProdSku.Sku AS INV10, 
                         MAX(dbo.ExpMkTbl_ProdSku.[Vendor #]) AS [Vendor #], dbo.ExpMkTbl_ProdSku.[Vendor Name] AS Vendor, dbo.ExpMkTbl_ProdSku.[Vendor Style], 
                         CASE WHEN [INET_ORiginalPrice] > [max_UnitPrice] THEN [inet_OriginalPrice] ELSE [max_unitprice] END AS [Original Price], 
                         CASE WHEN [INET_Price] > 0 THEN [INET_Price] WHEN [INET_ORiginalPrice] > [max_UnitPrice] THEN [inet_OriginalPrice] ELSE [max_unitprice] END AS [Current Price], 
                         CASE WHEN [Cost_EA] > 0 THEN [cost_ea] ELSE 0 END AS [Current Cost], dbo.ExpMkTbl_ProdSku.INET_Catalog AS [Current Event #], CASE WHEN LEFT([Inet_catalog], 1) = '2' THEN MAX([offer_id]) ELSE '' END AS [Last Event #], 
                         dbo.ExpMkTbl_ProdSku.[OH UNITS] AS [Current OH Units], dbo.ExpMkTbl_ProdSku.[OO UNITS] AS [Current OO Units]
FROM            dbo.ExpMkTbl_ProdSku LEFT OUTER JOIN
                         dbo.vwDailyUpdSlct_OriginalPrice ON dbo.ExpMkTbl_ProdSku.INV7 = dbo.vwDailyUpdSlct_OriginalPrice.INV7
GROUP BY dbo.ExpMkTbl_ProdSku.CAT_DESCRIPTION, dbo.ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, dbo.ExpMkTbl_ProdSku.[STYLE DESCRIPTION], dbo.ExpMkTbl_ProdSku.[COLOR DESCRIPTION], 
                         dbo.ExpMkTbl_ProdSku.[SIZE DESCRIPTION], dbo.ExpMkTbl_ProdSku.INV5, dbo.ExpMkTbl_ProdSku.INV7, dbo.ExpMkTbl_ProdSku.Sku, dbo.ExpMkTbl_ProdSku.[Vendor Name], dbo.ExpMkTbl_ProdSku.[Vendor Style], 
                         CASE WHEN [INET_ORiginalPrice] > [max_UnitPrice] THEN [inet_OriginalPrice] ELSE [max_unitprice] END, 
                         CASE WHEN [INET_Price] > 0 THEN [INET_Price] WHEN [INET_ORiginalPrice] > [max_UnitPrice] THEN [inet_OriginalPrice] ELSE [max_unitprice] END, CASE WHEN [Cost_EA] > 0 THEN [cost_ea] ELSE 0 END, 
                         dbo.ExpMkTbl_ProdSku.INET_Catalog, dbo.ExpMkTbl_ProdSku.[OH UNITS], dbo.ExpMkTbl_ProdSku.[OO UNITS]
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[33] 2[20] 3) )"
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
         Begin Table = "ExpMkTbl_ProdSku"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 222
               Right = 357
            End
            DisplayFlags = 280
            TopColumn = 20
         End
         Begin Table = "vwDailyUpdSlct_OriginalPrice"
            Begin Extent = 
               Top = 15
               Left = 402
               Bottom = 122
               Right = 692
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Current_01', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_Current_01', NULL, NULL
GO
