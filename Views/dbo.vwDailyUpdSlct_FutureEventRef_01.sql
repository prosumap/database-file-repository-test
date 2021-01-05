SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_FutureEventRef_01]
AS
SELECT        OFFER_ID, CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], INV5, INV7, Sku, COST_EA, INET_Catalog, INET_Price, INET_OriginalPrice, INET_Status, 
                         [OH UNITS], CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '0' ELSE [OO UNITS] END AS [OO U], 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE CONVERT(VARCHAR(10), [NDC], 101) END AS [NDC DATE], 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE [PO STATUS] END AS [PO # STATUS], 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE [PO #] END AS PO, 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE [Req #] END AS REQ, 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE CONVERT(VARCHAR(10), [Approved Date], 101) END AS [APPR DATE]
FROM            dbo.ExpMkTbl_ProdSku
GROUP BY OFFER_ID, CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], INV5, INV7, Sku, COST_EA, INET_Catalog, INET_Price, INET_OriginalPrice, INET_Status, 
                         [OH UNITS], CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '0' ELSE [OO UNITS] END, 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE CONVERT(VARCHAR(10), [NDC], 101) END, 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE [PO STATUS] END, CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE [PO #] END, 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE [Req #] END, 
                         CASE WHEN [PO STATUS] = 'Cancelled' THEN '0' WHEN [PO STATUS] = 'Received' THEN '' ELSE CONVERT(VARCHAR(10), [Approved Date], 101) END
GO
EXEC sp_addextendedproperty N'MS_Description', N'From DB_Reporting', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_01', NULL, NULL
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
         Begin Table = "ExpMkTbl_ProdSku"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 242
               Right = 290
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_01', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_01', NULL, NULL
GO
