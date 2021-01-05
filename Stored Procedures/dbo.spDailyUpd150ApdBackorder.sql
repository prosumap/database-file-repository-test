SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 3/8/2020
-- Description:	Part of Daily Update routine. Added this sp after access query started giving odbc timeouts
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd150ApdBackorder] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO MkTbl_Backorder
                         (CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], INV7, [SIZE DESCRIPTION], SKU, [BO UNITS], [BO COST $], [BO NET $], [BO TICKET $], ORDER_DATE)
SELECT        MkTbl_SKUMaster.CAT_DESCRIPTION, MkTbl_SKUMaster.SUBCAT_DESCRIPTION, MkTbl_SKUMaster.[STYLE DESCRIPTION], MkTbl_SKUMaster.[COLOR DESCRIPTION], LEFT(vwDailyUpdSlct_Backorder_2.SKU, 7) AS INV7, 
                         MkTbl_SKUMaster.[SIZE DESCRIPTION], vwDailyUpdSlct_Backorder_2.SKU, vwDailyUpdSlct_Backorder_2.[BO UNITS], vwDailyUpdSlct_Backorder_2.[BO COST $], vwDailyUpdSlct_Backorder_2.[BO NET $], 
                         vwDailyUpdSlct_Backorder_2.[BO TICKET $], vwDailyUpdSlct_Backorder_2.ORDER_DATE
FROM            vwDailyUpdSlct_Backorder_2 LEFT OUTER JOIN
                         MkTbl_SKUMaster ON vwDailyUpdSlct_Backorder_2.SKU = MkTbl_SKUMaster.Sku
GROUP BY MkTbl_SKUMaster.CAT_DESCRIPTION, MkTbl_SKUMaster.SUBCAT_DESCRIPTION, MkTbl_SKUMaster.[STYLE DESCRIPTION], MkTbl_SKUMaster.[COLOR DESCRIPTION], LEFT(vwDailyUpdSlct_Backorder_2.SKU, 7), 
                         MkTbl_SKUMaster.[SIZE DESCRIPTION], vwDailyUpdSlct_Backorder_2.SKU, vwDailyUpdSlct_Backorder_2.[BO UNITS], vwDailyUpdSlct_Backorder_2.[BO COST $], vwDailyUpdSlct_Backorder_2.[BO NET $], 
                         vwDailyUpdSlct_Backorder_2.[BO TICKET $], vwDailyUpdSlct_Backorder_2.ORDER_DATE

    -- Insert statements for procedure here

END
GO
