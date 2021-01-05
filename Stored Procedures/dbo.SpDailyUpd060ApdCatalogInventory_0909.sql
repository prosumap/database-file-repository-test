SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[SpDailyUpd060ApdCatalogInventory_0909]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


INSERT INTO ExpMkTbl_CatalogInventory ( INV10, [OH UNITS], [OH COST], [OH TICKET], [INET CATALOG], DEPARTMENT, CLASS, [STYLE DESCRIPTION], INV5, [COLOR DESCRIPTION], INV7, [SIZE DESCRIPTION], STATUS, [INET COST], [INET PRICE], [CAT PRICE], [POS DATE] )
SELECT vwDailyUpdSlct_CatalogInventory.INV10, vwDailyUpdSlct_Inventory_2.QTY AS [OH UNITS], [QTY]*[INET COST] AS [OH COST], [QTY]*[INET PRICE] AS [OH TICKET], vwDailyUpdSlct_CatalogInventory.[INET CATALOG], vwDailyUpdSlct_CatalogInventory.DEPARTMENT, vwDailyUpdSlct_CatalogInventory.CLASS, vwDailyUpdSlct_CatalogInventory.[STYLE DESCRIPTION], vwDailyUpdSlct_CatalogInventory.INV5, vwDailyUpdSlct_CatalogInventory.[COLOR DESCRIPTION], vwDailyUpdSlct_CatalogInventory.INV7, vwDailyUpdSlct_CatalogInventory.[SIZE DESCRIPTION], vwDailyUpdSlct_CatalogInventory.STATUS, vwDailyUpdSlct_CatalogInventory.[INET COST], vwDailyUpdSlct_CatalogInventory.[INET PRICE], vwDailyUpdSlct_CatalogInventory.[CAT PRICE], vwDailyUpdSlct_CatalogInventory.[POS DATE]
FROM vwDailyUpdSlct_CatalogInventory LEFT JOIN vwDailyUpdSlct_Inventory_2 ON vwDailyUpdSlct_CatalogInventory.INV10 = vwDailyUpdSlct_Inventory_2.SKU
GROUP BY vwDailyUpdSlct_CatalogInventory.INV10, vwDailyUpdSlct_Inventory_2.QTY, [QTY]*[INET COST], [QTY]*[INET PRICE], vwDailyUpdSlct_CatalogInventory.[INET CATALOG], vwDailyUpdSlct_CatalogInventory.DEPARTMENT, vwDailyUpdSlct_CatalogInventory.CLASS, vwDailyUpdSlct_CatalogInventory.[STYLE DESCRIPTION], vwDailyUpdSlct_CatalogInventory.INV5, vwDailyUpdSlct_CatalogInventory.[COLOR DESCRIPTION], vwDailyUpdSlct_CatalogInventory.INV7, vwDailyUpdSlct_CatalogInventory.[SIZE DESCRIPTION], vwDailyUpdSlct_CatalogInventory.STATUS, vwDailyUpdSlct_CatalogInventory.[INET COST], vwDailyUpdSlct_CatalogInventory.[INET PRICE], vwDailyUpdSlct_CatalogInventory.[CAT PRICE], vwDailyUpdSlct_CatalogInventory.[POS DATE];

END
GO
