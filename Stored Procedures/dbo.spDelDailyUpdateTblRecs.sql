SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: June 6, 2019
-- Description:	Deletes all records of selected table name
-- =============================================
Create PROCEDURE [dbo].[spDelDailyUpdateTblRecs] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM MkTbl_SKUMaster
	DELETE FROM MkTbl_TTLOnOrderReceived
	DELETE FROM ExpMkTbl_CatalogInventory
	DELETE FROM ExpMkTbl_ProdSku
	DELETE FROM ExpMkTbl_PoStatus
	DELETE FROM MkTbl_Projection
END
GO
