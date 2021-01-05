SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: June 6, 2019
-- Description:	Deletes all records of selected table name
-- =============================================
CREATE PROCEDURE [dbo].[spDelOPCSTblRecs] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM LinkTbl_Source_New
	DELETE FROM RefTbl_OPCSArriv
	DELETE FROM RefTbl_OPCSArrive_Closed	
	DELETE FROM RefTbl_OPCSChrgbk
	DELETE FROM RefTbl_OPCSDisc
	DELETE FROM RefTbl_OPCSINET
	DELETE FROM RefTbl_OPCSPO
	DELETE FROM RefTbl_OPCSPOClsd
	DELETE FROM RefTbl_OPCSProdSku
	DELETE FROM RefTbl_OPCSVendor
END
GO
