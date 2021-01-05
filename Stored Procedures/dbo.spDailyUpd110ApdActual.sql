SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 1/16/2020
-- Description:	Part of Daily Update routine. Added this sp after Access query started giving ODBC timeout errors
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd110ApdActual] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO MkTbl_Actual
                         (OFFER_ID, CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], INV5, [COLOR DESCRIPTION], INV7, [SIZE DESCRIPTION], INV10, [GROSS DEMAND], [NET DEMAND], [DEMAND COST], [DEMAND UNITS], 
                         [CANCEL UNITS], [SHIPPED UNITS], [RETURN UNITS], UNIT_PRICE, COST_EA, [OH U], [OO U], [HELD REQ U])
SELECT        vwDailyUpdSlct_Actual.OFFER_ID, vwDailyUpdSlct_Actual.CAT_DESCRIPTION, vwDailyUpdSlct_Actual.SUBCAT_DESCRIPTION, vwDailyUpdSlct_Actual.[STYLE DESCRIPTION], vwDailyUpdSlct_Actual.INV5, 
                         vwDailyUpdSlct_Actual.[COLOR DESCRIPTION], vwDailyUpdSlct_Actual.INV7, vwDailyUpdSlct_Actual.[SIZE DESCRIPTION], vwDailyUpdSlct_Actual.INV10, vwDailyUpdSlct_Actual.[GROSS DEMAND], 
                         vwDailyUpdSlct_Actual.[NET DEMAND], vwDailyUpdSlct_Actual.[DEMAND COST], vwDailyUpdSlct_Actual.[DEMAND UNITS], vwDailyUpdSlct_Actual.[CANCEL UNITS], vwDailyUpdSlct_Actual.[SHIPPED UNITS], 
                         vwDailyUpdSlct_Actual.[RETURN UNITS], vwDailyUpdSlct_Actual.UNIT_PRICE, vwDailyUpdSlct_Actual.COST_EA, vwDailyUpdSlct_ProjInventory.[OH UNITS] AS [OH U], SUM(CASE WHEN [PO #] = '' THEN 0 ELSE [OO UNITS] END)
                          AS [OO U], SUM(CASE WHEN [PO #] = '' THEN [OO UNITS] ELSE 0 END) AS [HELD REQ U]
FROM            vwDailyUpdSlct_Actual LEFT OUTER JOIN
                         vwDailyUpdSlct_ProjInventory ON vwDailyUpdSlct_Actual.INV10 = vwDailyUpdSlct_ProjInventory.Sku
GROUP BY vwDailyUpdSlct_Actual.OFFER_ID, vwDailyUpdSlct_Actual.CAT_DESCRIPTION, vwDailyUpdSlct_Actual.SUBCAT_DESCRIPTION, vwDailyUpdSlct_Actual.[STYLE DESCRIPTION], vwDailyUpdSlct_Actual.INV5, 
                         vwDailyUpdSlct_Actual.[COLOR DESCRIPTION], vwDailyUpdSlct_Actual.INV7, vwDailyUpdSlct_Actual.[SIZE DESCRIPTION], vwDailyUpdSlct_Actual.INV10, vwDailyUpdSlct_Actual.[GROSS DEMAND], 
                         vwDailyUpdSlct_Actual.[NET DEMAND], vwDailyUpdSlct_Actual.[DEMAND COST], vwDailyUpdSlct_Actual.[DEMAND UNITS], vwDailyUpdSlct_Actual.[CANCEL UNITS], vwDailyUpdSlct_Actual.[SHIPPED UNITS], 
                         vwDailyUpdSlct_Actual.[RETURN UNITS], vwDailyUpdSlct_Actual.UNIT_PRICE, vwDailyUpdSlct_Actual.COST_EA, vwDailyUpdSlct_ProjInventory.[OH UNITS]

    -- Insert statements for procedure here

END
GO
