SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Created by :		ajay.pandey
-- Created date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SpDailyUpd160ApdBackorderFill]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

INSERT INTO MkTbl_BackorderFill ( CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], [SIZE DESCRIPTION], SKU, [BO UNITS], [BO COST $], [BO NET $], [BO TICKET $], [PO #], NDC, [FISCAL WK], [FISCAL YEAR], [OO UNITS] )


SELECT MkTbl_TTLOnOrderReceived.[Group Code] AS CAT_DESCRIPTION, MkTbl_TTLOnOrderReceived.[Merch Type] AS SUBCAT_DESCRIPTION, MkTbl_TTLOnOrderReceived.[Style Desc] AS [STYLE DESCRIPTION], MkTbl_TTLOnOrderReceived.[Color Desc] AS [COLOR DESCRIPTION], MkTbl_TTLOnOrderReceived.[Size Desc] AS [SIZE DESCRIPTION], vwDailyUpdSlct_BackorderFill_1.SKU, vwDailyUpdSlct_BackorderFill_1.[BO UNITS], vwDailyUpdSlct_BackorderFill_1.[BO COST $], vwDailyUpdSlct_BackorderFill_1.[BO NET $], vwDailyUpdSlct_BackorderFill_1.[BO TICKET $], MkTbl_TTLOnOrderReceived.[PO #], MkTbl_TTLOnOrderReceived.NDC, MkTbl_TTLOnOrderReceived.[FISCAL WK], MkTbl_TTLOnOrderReceived.[FISCAL YEAR], MkTbl_TTLOnOrderReceived.[OO UNITS] AS [OO UNITS]
FROM vwDailyUpdSlct_BackorderFill_1 LEFT JOIN MkTbl_TTLOnOrderReceived ON vwDailyUpdSlct_BackorderFill_1.SKU = MkTbl_TTLOnOrderReceived.INV10
WHERE (((MkTbl_TTLOnOrderReceived.[PO STATUS])='OPEN'))
GROUP BY MkTbl_TTLOnOrderReceived.[Group Code], MkTbl_TTLOnOrderReceived.[Merch Type], MkTbl_TTLOnOrderReceived.[Style Desc], MkTbl_TTLOnOrderReceived.[Color Desc], MkTbl_TTLOnOrderReceived.[Size Desc], vwDailyUpdSlct_BackorderFill_1.SKU, vwDailyUpdSlct_BackorderFill_1.[BO UNITS], vwDailyUpdSlct_BackorderFill_1.[BO COST $], vwDailyUpdSlct_BackorderFill_1.[BO NET $], vwDailyUpdSlct_BackorderFill_1.[BO TICKET $], MkTbl_TTLOnOrderReceived.[PO #], MkTbl_TTLOnOrderReceived.NDC, MkTbl_TTLOnOrderReceived.[FISCAL WK], MkTbl_TTLOnOrderReceived.[FISCAL YEAR], MkTbl_TTLOnOrderReceived.[OO UNITS];

END


GO
