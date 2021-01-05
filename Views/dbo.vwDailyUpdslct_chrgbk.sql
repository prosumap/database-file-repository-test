SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

		Create view 	  [dbo].[vwDailyUpdslct_chrgbk]
		as
			  SELECT [DESC] AS [PO #], Sum(RefTbl_OPCSChrgbk.[RECEIPT AMOUNT]) AS CHARGEBACK
FROM RefTbl_OPCSChrgbk
GROUP BY [DESC];
GO
