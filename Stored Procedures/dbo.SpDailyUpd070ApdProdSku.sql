SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SpDailyUpd070ApdProdSku]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO ExpMkTbl_ProdSku ( OFFER_ID, OFFER, [GO LIVE FISCAL WEEK], [GO LIVE FISCAL YEAR], CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], INV5, INV7, Sku, COST_EA, UNIT_PRICE, [Vendor #], [Vendor Name], [Vendor Style], [POS Date], INET_Catalog, INET_Price, INET_OriginalPrice, INET_Status, [OH UNITS], [OO UNITS], [EVENT BOP UNITS], NDC, [PO STATUS], [PO #], [REQ #], [APPROVED DATE] )

SELECT vwDailyUpdSlct_ProdSku_4.OFFER_ID, vwDailyUpdSlct_ProdSku_4.OFFER, vwDailyUpdSlct_ProdSku_4.[GO LIVE FISCAL WEEK], vwDailyUpdSlct_ProdSku_4.[GO LIVE FISCAL YEAR], vwDailyUpdSlct_ProdSku_4.CAT_DESCRIPTION, vwDailyUpdSlct_ProdSku_4.SUBCAT_DESCRIPTION, vwDailyUpdSlct_ProdSku_4.[STYLE DESCRIPTION], vwDailyUpdSlct_ProdSku_4.[COLOR DESCRIPTION], vwDailyUpdSlct_ProdSku_4.[SIZE DESCRIPTION], vwDailyUpdSlct_ProdSku_4.INV5, vwDailyUpdSlct_ProdSku_4.INV7, vwDailyUpdSlct_ProdSku_4.Sku, vwDailyUpdSlct_ProdSku_4.COST_EA, vwDailyUpdSlct_ProdSku_4.UNIT_PRICE, vwDailyUpdSlct_ProdSku_4.[Vendor #], vwDailyUpdSlct_ProdSku_4.[Vendor Name], vwDailyUpdSlct_ProdSku_4.[Vendor Style], vwDailyUpdSlct_ProdSku_4.[POS Date], vwDailyUpdSlct_ProdSku_4.INET_Catalog, vwDailyUpdSlct_ProdSku_4.INET_Price, vwDailyUpdSlct_ProdSku_4.INET_OriginalPrice, vwDailyUpdSlct_ProdSku_4.INET_Status, vwDailyUpdSlct_ProdSku_4.[OH UNITS], vwDailyUpdSlct_ProdSku_4.[OO UNITS], MkTbl_WklyInventoryForecast.[BOP UNits] AS [EVENT BOP UNITS], vwDailyUpdSlct_ProdSku_4.NDC, vwDailyUpdSlct_ProdSku_4.[PO STATUS], vwDailyUpdSlct_ProdSku_4.[PO #], vwDailyUpdSlct_ProdSku_4.[REQ #], vwDailyUpdSlct_ProdSku_4.[APPROVED DATE]
FROM vwDailyUpdSlct_ProdSku_4 LEFT JOIN MkTbl_WklyInventoryForecast ON (vwDailyUpdSlct_ProdSku_4.[GO LIVE FISCAL YEAR] = MkTbl_WklyInventoryForecast.FISCAL_YEAR) AND (vwDailyUpdSlct_ProdSku_4.[GO LIVE FISCAL WEEK] = MkTbl_WklyInventoryForecast.FISCAL_WEEK) AND (vwDailyUpdSlct_ProdSku_4.Sku = MkTbl_WklyInventoryForecast.INV10);

END
GO
