SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
		  Create view [dbo].[vwDailyUpdslct_disc]
			  as 
			  SELECT RefTbl_OPCSDisc.PO AS [PO #], Sum(RefTbl_OPCSDisc.[PO CASH]) AS DISCOUNTS
FROM RefTbl_OPCSDisc
GROUP BY RefTbl_OPCSDisc.PO;
GO
