SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd350ApdRtnByShipDate] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET ANSI_WARNINGS OFF;  

    -- Insert statements for procedure here

-- Replace qMkTbl_RtnByShipDate
INSERT INTO MkTbl_RtnbyShipDate
                         (CAT_DESCRIPTION, SUBCAT_DESCRIPTION, Ship_Date, Status, Line_Catalog, Ship_Net$, Ship_Gross$, Ship_Cost$, Ship_Units, Ship_Fiscal_Wk, Ship_Fiscal_Month#, Ship_Fiscal_Month, Ship_Fiscal_Qtr, Ship_Fiscal_Year, 
                         Ship_Season, Ship_YYYYWK, Rtn_Date, Rtn_Net$, Rtn_Gross$, Rtn_Cost$, Rtn_Units, Rtn_RsnCd, Rtn_RsnDesc, Rtn_Fiscal_Wk, Rtn_Fiscal_Month#, Rtn_Fiscal_Month, Rtn_Fiscal_Qtr, Rtn_Fiscal_Year, Rtn_Season, 
                         Rtn_YYYYWK, Exch_Date, Exch_Net$, Exch_Gross$, Exch_Cost$, Exch_Units, Exch_RsnCd, Exch_RsnDesc, Exch_Fiscal_Wk, Exch_Fiscal_Month#, Exch_Fiscal_Month, Exch_Fiscal_Qtr, Exch_Fiscal_Year, Exch_Season, 
                         Exch_YYYYWK)
SELECT        CAT_DESCRIPTION, SUBCAT_DESCRIPTION, Ship_Date, Status, Line_Catalog, SUM(Ship_Net$) AS Ship_Net$, SUM(Ship_Gross$) AS Ship_Gross$, SUM(Ship_Cost$) AS Ship_Cost$, SUM(Ship_Units) AS Ship_Units, 
                         Ship_Fiscal_Wk, Ship_Fiscal_Month#, Ship_Fiscal_Month, Ship_Fiscal_Qtr, Ship_Fiscal_Year, Ship_Season, Ship_YYYYWK, Rtn_Date, SUM(Rtn_Net$) AS Rtn_Net$, SUM(Rtn_Gross$) AS Rtn_Gross$, SUM(Rtn_Cost$) 
                         AS Rtn_Cost$, SUM(Rtn_Units) AS Rtn_Units, Rtn_RsnCd, Rtn_RsnDesc, Rtn_Fiscal_Wk, Rtn_Fiscal_Month#, Rtn_Fiscal_Month, Rtn_Fiscal_Qtr, Rtn_Fiscal_Year, Rtn_Season, Rtn_YYYYWK, Exch_Date, SUM(Exch_Net$) 
                         AS Exch_Net$, SUM(Exch_Gross$) AS Exch_Gross$, SUM(Exch_Cost$) AS Exch_Cost$, SUM(Exch_Units) AS Exch_Units, Exch_RsnCd, Exch_RsnDesc, Exch_Fiscal_Wk, Exch_Fiscal_Month#, Exch_Fiscal_Month, 
                         Exch_Fiscal_Qtr, Exch_Fiscal_Year, Exch_Season, Exch_YYYYWK
FROM            vwDailyUpdSlct_RtnByShipDate_3
GROUP BY CAT_DESCRIPTION, SUBCAT_DESCRIPTION, Ship_Date, Status, Line_Catalog, Ship_Fiscal_Wk, Ship_Fiscal_Month#, Ship_Fiscal_Month, Ship_Fiscal_Qtr, Ship_Fiscal_Year, Ship_Season, Ship_YYYYWK, Rtn_Date, 
                         Rtn_RsnCd, Rtn_RsnDesc, Rtn_Fiscal_Wk, Rtn_Fiscal_Month#, Rtn_Fiscal_Month, Rtn_Fiscal_Qtr, Rtn_Fiscal_Year, Rtn_Season, Rtn_YYYYWK, Exch_Date, Exch_RsnCd, Exch_RsnDesc, Exch_Fiscal_Wk, 
                         Exch_Fiscal_Month#, Exch_Fiscal_Month, Exch_Fiscal_Qtr, Exch_Fiscal_Year, Exch_Season, Exch_YYYYWK


END
GO
