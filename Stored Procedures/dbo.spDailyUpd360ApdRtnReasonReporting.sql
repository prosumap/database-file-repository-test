SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd360ApdRtnReasonReporting] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_RtnReasonReporting
                         (Order#, CAT_DESCRIPTION, SUBCAT_DESCRIPTION, [STYLE DESCRIPTION], INV5, [COLOR DESCRIPTION], INV7, [SIZE DESCRIPTION], INV10, [Vendor #], [Vendor Name], [Vendor Style], Ship_Date, Status, Line_Catalog, 
                         Ship_Net$, Ship_Gross$, Ship_Cost$, Ship_Units, Ship_RsnCd, Ship_RsnDesc, Ship_Fiscal_Wk, Ship_Fiscal_Month#, Ship_Fiscal_Month, Ship_Fiscal_Qtr, Ship_Fiscal_Year, Ship_Season, Ship_YYYYWK, Rtn_Date, 
                         Rtn_Net$, Rtn_Gross$, Rtn_Cost$, Rtn_Units, Rtn_RsnCd, Rtn_RsnDesc, Rtn_Fiscal_Wk, Rtn_Fiscal_Month#, Rtn_Fiscal_Month, Rtn_Fiscal_Qtr, Rtn_Fiscal_Year, Rtn_Season, Rtn_YYYYWK, Exch_Date, Exch_Net$, 
                         Exch_Gross$, Exch_Cost$, Exch_Units, Exch_RsnCd, Exch_RsnDesc, Exch_Fiscal_Wk, Exch_Fiscal_Month#, Exch_Fiscal_Month, Exch_Fiscal_Qtr, Exch_Fiscal_Year, Exch_Season, Exch_YYYYWK)
SELECT        vwDailyUpdSlct_RtnReasonReporting_2.Order#, vwDailyUpdSlct_RtnReasonReporting_2.CAT_DESCRIPTION, vwDailyUpdSlct_RtnReasonReporting_2.SUBCAT_DESCRIPTION, 
                         vwDailyUpdSlct_RtnReasonReporting_2.[STYLE DESCRIPTION], vwDailyUpdSlct_RtnReasonReporting_2.INV5, vwDailyUpdSlct_RtnReasonReporting_2.[COLOR DESCRIPTION], vwDailyUpdSlct_RtnReasonReporting_2.INV7, 
                         vwDailyUpdSlct_RtnReasonReporting_2.[SIZE DESCRIPTION], vwDailyUpdSlct_RtnReasonReporting_2.INV10, vwDailyUpdSlct_RtnReasonReporting_2.[Vendor #], vwDailyUpdSlct_RtnReasonReporting_2.[Vendor Name], 
                         vwDailyUpdSlct_RtnReasonReporting_2.[Vendor Style], vwDailyUpdSlct_RtnReasonReporting_2.Ship_Date, vwDailyUpdSlct_RtnReasonReporting_2.Status, vwDailyUpdSlct_RtnReasonReporting_2.Line_Catalog, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Ship_Net$, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Gross$, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Cost$, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Units, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Ship_RsnCd, vwDailyUpdSlct_RtnReasonReporting_2.Ship_RsnDesc, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Fiscal_Wk, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Ship_Fiscal_Month#, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Fiscal_Month, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Fiscal_Qtr, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Ship_Fiscal_Year, vwDailyUpdSlct_RtnReasonReporting_2.Ship_Season, vwDailyUpdSlct_RtnReasonReporting_2.Ship_YYYYWK, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Date, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Net$, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Gross$, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Cost$, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Units, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Rtn_RsnCd, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_RsnDesc, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Fiscal_Wk, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Fiscal_Month#, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Fiscal_Month, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Fiscal_Qtr, 
                         vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Fiscal_Year, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_Season, vwDailyUpdSlct_RtnReasonReporting_2.Rtn_YYYYWK, MkTbl_DailyExch.Exch_Date, 
                         MkTbl_DailyExch.Exch_Net$, MkTbl_DailyExch.Exch_Gross$, MkTbl_DailyExch.Exch_Cost$, MkTbl_DailyExch.Exch_Units, MkTbl_DailyExch.Exch_RsnCd, MkTbl_DailyExch.Exch_RsnDesc, MkTbl_DailyExch.Exch_Fiscal_Wk, 
                         MkTbl_DailyExch.Exch_Fiscal_Month#, MkTbl_DailyExch.Exch_Fiscal_Month, MkTbl_DailyExch.Exch_Fiscal_Qtr, MkTbl_DailyExch.Exch_Fiscal_Year, MkTbl_DailyExch.Exch_Season, MkTbl_DailyExch.Exch_YYYYWK
FROM            vwDailyUpdSlct_RtnReasonReporting_2 LEFT OUTER JOIN
                         MkTbl_DailyExch ON vwDailyUpdSlct_RtnReasonReporting_2.INV10 = MkTbl_DailyExch.INV10 AND vwDailyUpdSlct_RtnReasonReporting_2.Order# = MkTbl_DailyExch.Order#

END
GO
