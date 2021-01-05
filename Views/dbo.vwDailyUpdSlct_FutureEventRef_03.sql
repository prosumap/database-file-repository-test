SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwDailyUpdSlct_FutureEventRef_03]
AS
SELECT        Division, Department, Class, Style, Color, Size, INV5, INV7, INV10, Cost, [Original Price], [Current Price], [Current Event], [Current Status], [OH Units], [OO Units], 
                         CASE WHEN [event #] = '733' THEN 'X' ELSE '' END AS [Spring Trans 20], CASE WHEN [event #] = '734' THEN 'X' ELSE '' END AS [Spring 1 20], CASE WHEN [event #] = '735' THEN 'X' ELSE '' END AS [Spring 2 20], 
                         CASE WHEN [event #] = '736' THEN 'X' ELSE '' END AS [Summer 1 20], CASE WHEN [event #] = '737' THEN 'X' ELSE '' END AS [Summer 2 20], CASE WHEN [event #] = '738' THEN 'X' ELSE '' END AS [Summer 3 20], 
                         CASE WHEN [event #] = '740' THEN 'X' ELSE '' END AS [Fall 1 20], CASE WHEN [event #] = '741' THEN 'X' ELSE '' END AS [Fall 2 20], CASE WHEN [event #] = '742' THEN 'X' ELSE '' END AS [Winter 20], 
                         CASE WHEN [event #] = '743' THEN 'X' ELSE '' END AS [Holiday 20], CASE WHEN [event #] = '744' THEN 'X' ELSE '' END AS [Spring Trans 21], CASE WHEN [event #] = '745' THEN 'X' ELSE '' END AS [Spring 1 21], 
                         CASE WHEN [event #] = '746' THEN 'X' ELSE '' END AS [Spring 2 21], CASE WHEN [event #] = '722' THEN 'X' ELSE '' END AS [Spring Trans 19], CASE WHEN [event #] = '723' THEN 'X' ELSE '' END AS [Spring 1 19], 
                         CASE WHEN [event #] = '724' THEN 'X' ELSE '' END AS [Spring 2 19], CASE WHEN [event #] = '725' THEN 'X' ELSE '' END AS [Summer 1 19], CASE WHEN [event #] = '726' THEN 'X' ELSE '' END AS [Summer 2 19], 
                         CASE WHEN [event #] = '727' THEN 'X' ELSE '' END AS [Summer 3 19], CASE WHEN [event #] = '728' THEN 'X' ELSE '' END AS [Vacation 19], CASE WHEN [event #] = '729' THEN 'X' ELSE '' END AS [Fall 1 19], 
                         CASE WHEN [event #] = '730' THEN 'X' ELSE '' END AS [Fall 2 19], CASE WHEN [event #] = '731' THEN 'X' ELSE '' END AS [Winter 19], CASE WHEN [event #] = '732' THEN 'X' ELSE '' END AS [Holiday 19], 
                         CASE WHEN [event #] = '112' THEN 'X' ELSE '' END AS [Beyond Basics Spring 19], CASE WHEN [event #] = '115' THEN 'X' ELSE '' END AS [Beyond Basics Fall 19], 
                         CASE WHEN [event #] = '121' THEN 'X' ELSE '' END AS [Beyond Basics Spring 20], CASE WHEN [event #] = '124' THEN 'X' ELSE '' END AS [Beyond Basics Summer 20], 
                         CASE WHEN [event #] = '127' THEN 'X' ELSE '' END AS [Beyond Basics Fall 20], CASE WHEN [event #] = '130' THEN 'X' ELSE '' END AS [Beyond Basics Winter 20], 
                         CASE WHEN [event #] = '111' THEN 'X' ELSE '' END AS [Web Ex Spring 19], CASE WHEN [event #] = '114' THEN 'X' ELSE '' END AS [Web Ex Fall 19], CASE WHEN [event #] = '120' THEN 'X' ELSE '' END AS [Web Ex Spring 20], 
                         CASE WHEN [event #] = '123' THEN 'X' ELSE '' END AS [Web Ex Summer 20], CASE WHEN [event #] = '126' THEN 'X' ELSE '' END AS [Web Ex Fall 20], CASE WHEN [event #] = '129' THEN 'X' ELSE '' END AS [Web Ex Winter 20],
                          CASE WHEN [event #] = '747' THEN 'X' ELSE '' END AS [Summer 1 21], CASE WHEN [event #] = '748' THEN 'X' ELSE '' END AS [Summer 2 21], CASE WHEN [event #] = '749' THEN 'X' ELSE '' END AS [Summer 3 21], 
                         CASE WHEN [event #] = '751' THEN 'X' ELSE '' END AS [Fall 1 21], CASE WHEN [event #] = '752' THEN 'X' ELSE '' END AS [Fall 2 21], CASE WHEN [event #] = '753' THEN 'X' ELSE '' END AS [Winter 21], 
                         CASE WHEN [event #] = '754' THEN 'X' ELSE '' END AS [Holiday 21], CASE WHEN [event #] = '711' THEN 'X' ELSE '' END AS [Spring Trans 18], CASE WHEN [event #] = '712' THEN 'X' ELSE '' END AS [Spring 1 18], 
                         CASE WHEN [event #] = '713' THEN 'X' ELSE '' END AS [Spring 2 18], CASE WHEN [event #] = '714' THEN 'X' ELSE '' END AS [Summer 1 18], CASE WHEN [event #] = '715' THEN 'X' ELSE '' END AS [Summer 2 18], 
                         CASE WHEN [event #] = '716' THEN 'X' ELSE '' END AS [Summer 3 18], CASE WHEN [event #] = '717' THEN 'X' ELSE '' END AS [Fall Trans 18], CASE WHEN [event #] = '718' THEN 'X' ELSE '' END AS [Fall 1 18], 
                         CASE WHEN [event #] = '719' THEN 'X' ELSE '' END AS [Fall 2 18], CASE WHEN [event #] = '720' THEN 'X' ELSE '' END AS [Winter 18], CASE WHEN [event #] = '721' THEN 'X' ELSE '' END AS [Holiday 18]
FROM            dbo.vwDailyUpdSlct_FutureEventRef_02
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
         Begin Table = "vwDailyUpdSlct_FutureEventRef_02"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 271
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_03', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwDailyUpdSlct_FutureEventRef_03', NULL, NULL
GO
