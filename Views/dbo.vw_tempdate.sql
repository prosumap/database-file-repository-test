SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE view  [dbo].[vw_tempdate]
as
SELECT CAST (DATEADD(YEAR, -1, [date]) + (CAST ([date] as INT) - CAST (DATEADD(YEAR, -1, [date]) AS INT)) % 7 AS DATE) as lastyeardate,[date], [year],[FiscalWk] from [RefTbl_Calendar] 
GO
