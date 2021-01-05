SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: June 6, 2019
-- Description:	Deletes all records of selected table name
-- =============================================
CREATE PROCEDURE [dbo].[spDelOPCSTblRecsWkly] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM LinkTbl_CTrans_New
	DELETE FROM LinkTbl_Cl_Hdr
	DELETE FROM LinkTbl_CordDtl
	DELETE FROM LinkTbl_Hdr
	DELETE FROM LinkTbl_OrdDtl
	DELETE FROM LinkTbl_Trans_New
	DELETE FROM RefTbl_OpcsVdr_Type
	DELETE FROM RefTbl_Vdr_Main
	
END
GO
