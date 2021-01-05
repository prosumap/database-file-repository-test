SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: August 20, 2019
-- Description:	Adds recs to MkTbl_ActualbyDate.  Part of Daily Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpdApdActualbyDate] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_ActualbyDate
                         (OFFER_ID, ORDER_DATE, [GROSS DEMAND], [DEMAND COST], [DEMAND UNITS], [NET DEMAND], [CANCEL UNITS], [SHIPPED UNITS], [RETURN UNITS], FiscalWk, MonthNo, MonthDesc, Qtr, Year, YYYYWK)
SELECT        F21_VDRS_ORDER_DETAIL.OFFER_ID, F21_VDRS_ORDER_DETAIL.ORDER_DATE, SUM(F21_VDRS_ORDER_DETAIL.EXT_PRICE) AS [GROSS DEMAND], SUM(F21_VDRS_ORDER_DETAIL.EXT_COST) AS [DEMAND COST], 
                         SUM(F21_VDRS_ORDER_DETAIL.QUANTITY) AS [DEMAND UNITS], SUM(F21_VDRS_ORDER_DETAIL.SH_REVENUE) AS [NET DEMAND], SUM(F21_VDRS_ORDER_DETAIL.CANCEL_QUANTITY) AS [CANCEL UNITS], 
                         SUM(F21_VDRS_ORDER_DETAIL.SHIP_QUANTITY) AS [SHIPPED UNITS], SUM(F21_VDRS_ORDER_DETAIL.RETURN_QUANTITY) AS [RETURN UNITS], RefTbl_Calendar.FiscalWk, RefTbl_Calendar.MonthNo, 
                         RefTbl_Calendar.MonthDesc, RefTbl_Calendar.Qtr, RefTbl_Calendar.Year, RefTbl_Calendar.YYYYWK
FROM            F21_VDRS_ORDER_DETAIL INNER JOIN
                         RefTbl_Calendar ON F21_VDRS_ORDER_DETAIL.ORDER_DATE = RefTbl_Calendar.Date
GROUP BY F21_VDRS_ORDER_DETAIL.OFFER_ID, F21_VDRS_ORDER_DETAIL.ORDER_DATE, RefTbl_Calendar.FiscalWk, RefTbl_Calendar.MonthNo, RefTbl_Calendar.MonthDesc, RefTbl_Calendar.Qtr, RefTbl_Calendar.Year, 
                         RefTbl_Calendar.YYYYWK
END
GO
