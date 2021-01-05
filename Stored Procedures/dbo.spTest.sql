SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 6/29/2020
-- Description:	For testing purposes
-- =============================================
create PROCEDURE [dbo].[spTest] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT        OFFER_ID, Sku, CAT_DESCRIPTION, CATEGORY_ID, SUBCAT_DESCRIPTION, SUB_CATEGORY_ID, [STYLE DESCRIPTION], [OFFER SKU ID]
FROM            MkTbl_SKUMaster

    -- Insert statements for procedure here

END
GO
