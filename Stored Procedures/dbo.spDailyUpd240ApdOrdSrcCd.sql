SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd240ApdOrdSrcCd] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

--This part was changed by Kari on 10/16/19 on the old program so it needed to changed here as well
--INSERT INTO MkTbl_OrdSrcCd
--                         ([ORDER #], [ORDER DATE], [SOURCE CD], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], [DEMAND $], [SALES REP])
--SELECT        vwDailyUpdSlct_OrdSrcCd.[ORDER #], vwDailyUpdSlct_OrdSrcCd.[Order Date], vwDailyUpdSlct_OrdSrcCd.[SOURCE CD], vwDailyUpdSlct_OrdSrcCd.[SOURCE DESC], vwDailyUpdSlct_OrdSrcCd.[ALT SOURCE CD], 
--                         LinkTbl_Source.Descrption AS [ALT SOURCE DESC], vwDailyUpdSlct_OrdSrcCd.[DEMAND $], vwDailyUpdSlct_OrdSrcCd.[SALES REP]
--FROM            vwDailyUpdSlct_OrdSrcCd LEFT OUTER JOIN
--                         LinkTbl_Source ON vwDailyUpdSlct_OrdSrcCd.[ALT SOURCE CD] = LinkTbl_Source.OPCSSRCBP
--WHERE        (vwDailyUpdSlct_OrdSrcCd.[Order Date] IS NOT NULL)

INSERT INTO MkTbl_OrdSrcCd
                         ([ORDER #], [ORDER DATE], [SOURCE CD], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], [DEMAND $], [SALES REP], [CUSTOMER #])
SELECT        vwDailyUpdSlct_OrdSrcCd_2.[ORDER #], vwDailyUpdSlct_OrdSrcCd_2.[Order Date], vwDailyUpdSlct_OrdSrcCd_2.[SOURCE CD], vwDailyUpdSlct_OrdSrcCd_2.[SOURCE DESC], vwDailyUpdSlct_OrdSrcCd_2.[ALT SOURCE CD], 
                         LinkTbl_Source_New.Descrption AS [ALT SOURCE DESC], vwDailyUpdSlct_OrdSrcCd_2.[DEMAND $], vwDailyUpdSlct_OrdSrcCd_2.[SALES REP], vwDailyUpdSlct_OrdSrcCd_2.[Customer #]
FROM            vwDailyUpdSlct_OrdSrcCd_2 LEFT OUTER JOIN
                         LinkTbl_Source_New ON vwDailyUpdSlct_OrdSrcCd_2.[ALT SOURCE CD] = LinkTbl_Source_New.OpcsSrcBp



END
GO
