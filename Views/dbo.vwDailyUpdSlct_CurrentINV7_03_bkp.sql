SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vwDailyUpdSlct_CurrentINV7_03_bkp]
AS
SELECT        INV7, MAX([Last Event]) AS [Last Event]
FROM            dbo.MkTbl_LastEvent
GROUP BY INV7
GO
