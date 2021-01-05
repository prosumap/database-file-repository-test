SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
	CREATE VIEW  [dbo].[vwDailyUpdSlct_OPCSInventory]
	AS
	SELECT        INV AS SKU, [On Hand Qty] AS QTY, CrOn as [Created On]
	FROM            dbo.RefTbl_OPCSProdSku
	GROUP BY INV, [On Hand Qty], CrOn
GO
