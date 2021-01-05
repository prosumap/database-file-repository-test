SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd230ApdCLOrdSrcCd] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_OrdSrcCd
                         ([ORDER #], [ORDER DATE], [SOURCE CD], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], [DEMAND $], [SALES REP], [CUSTOMER #])
SELECT        vwDailyUpdSlct_Cl_OrdSrcCd_2.[ORDER #], vwDailyUpdSlct_Cl_OrdSrcCd_2.[Order Date], vwDailyUpdSlct_Cl_OrdSrcCd_2.[SOURCE CD], vwDailyUpdSlct_Cl_OrdSrcCd_2.[SOURCE DESC], 
                         vwDailyUpdSlct_Cl_OrdSrcCd_2.[ALT SOURCE CD], LinkTbl_Source_New.Descrption AS [ALT SOURCE DESC], vwDailyUpdSlct_Cl_OrdSrcCd_2.[DEMAND $], vwDailyUpdSlct_Cl_OrdSrcCd_2.[SALES REP], 
                         vwDailyUpdSlct_Cl_OrdSrcCd_2.[CUSTOMER #]
FROM            vwDailyUpdSlct_Cl_OrdSrcCd_2 LEFT OUTER JOIN
                         LinkTbl_Source_New ON vwDailyUpdSlct_Cl_OrdSrcCd_2.[ALT SOURCE CD] = LinkTbl_Source_New.OpcsSrcBp



END
GO
