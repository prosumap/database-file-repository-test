SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Created by :		ajay.pandey
-- Created date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SpDailyUpd080ApdPoStatus]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO ExpMkTbl_PoStatus ( [CATALOG], [CATALOG DESC], CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], [COLOR DESCRIPTION], INV7, COST_EA, [Vendor #], [Vendor Name], [Vendor Style], [OH UNITS], [APPROVED OO UNITS], [DRAFT OO UNITS], [HELD REQ UNITS], [PO STATUS], NDC, [PO #], [REQ #], [APPROVED DATE] )

SELECT ExpMkTbl_ProdSku.OFFER_ID AS [CATALOG], F21_FMKT_OFFER.DESCRIPTION AS [CATALOG DESC], ExpMkTbl_ProdSku.CAT_DESCRIPTION, ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, ExpMkTbl_ProdSku.[STYLE DESCRIPTION], ExpMkTbl_ProdSku.[COLOR DESCRIPTION], Left([Sku],7) AS INV7, ExpMkTbl_ProdSku.COST_EA, ExpMkTbl_ProdSku.[Vendor #], ExpMkTbl_ProdSku.[Vendor Name], ExpMkTbl_ProdSku.[Vendor Style], Sum(ExpMkTbl_ProdSku.[OH UNITS]) AS [OH UNITS], Sum(IIf([PO #] Is Null,0,IIf([approved date] Is Not Null,[OO UNITS],0))) AS [APPROVED OO UNITS], Sum(IIf([PO #] Is Null,0,IIf([approved date] Is Not Null,0,[OO UNITS]))) AS [DRAFT OO UNITS], Sum(IIf([PO #] Is Null,[OO UNITS],0)) AS [HELD REQ UNITS], ExpMkTbl_ProdSku.[PO STATUS] AS [PO STATUS], ExpMkTbl_ProdSku.NDC, ExpMkTbl_ProdSku.[PO #], ExpMkTbl_ProdSku.[REQ #], ExpMkTbl_ProdSku.[APPROVED DATE]
FROM ExpMkTbl_ProdSku LEFT JOIN F21_FMKT_OFFER ON ExpMkTbl_ProdSku.OFFER_ID = F21_FMKT_OFFER.OFFER_ID
GROUP BY ExpMkTbl_ProdSku.OFFER_ID, F21_FMKT_OFFER.DESCRIPTION, ExpMkTbl_ProdSku.CAT_DESCRIPTION, ExpMkTbl_ProdSku.SUBCAT_DESCRIPTION, ExpMkTbl_ProdSku.[STYLE DESCRIPTION], ExpMkTbl_ProdSku.[COLOR DESCRIPTION], Left([Sku],7), ExpMkTbl_ProdSku.COST_EA, ExpMkTbl_ProdSku.[Vendor #], ExpMkTbl_ProdSku.[Vendor Name], ExpMkTbl_ProdSku.[Vendor Style], ExpMkTbl_ProdSku.[PO STATUS], ExpMkTbl_ProdSku.NDC, ExpMkTbl_ProdSku.[PO #], ExpMkTbl_ProdSku.[REQ #], ExpMkTbl_ProdSku.[APPROVED DATE];

END
GO
