SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 4/19/2020
-- Description:	Part of Weekly Update 7 routine. Added this sp after activating the F21 txt import routine
-- =============================================
create PROCEDURE [dbo].[spDailyUpd510ApdWklyInventoryForecast] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO MkTbl_WklyInventoryForecast
                         (INV5, INV7, INV10, [BOP UNITS], WEEK_BEGIN_DATE, WEEK_END_DATE, FISCAL_WEEK, FISCAL_MONTH, FISCAL_QUARTER, FISCAL_YEAR)
SELECT        LEFT(F21_FMSH_ITEM_FORECAST_PERIOD.SKU, 5) AS INV5, LEFT(F21_FMSH_ITEM_FORECAST_PERIOD.SKU, 7) AS INV7, F21_FMSH_ITEM_FORECAST_PERIOD.SKU AS INV10, 
                         F21_FMSH_ITEM_FORECAST_PERIOD.BEG_QOH_QTY AS [BOP UNITS], F21_FADM_FISCAL_CALENDAR.WEEK_BEGIN_DATE, F21_FADM_FISCAL_CALENDAR.WEEK_END_DATE, F21_FADM_FISCAL_CALENDAR.FISCAL_WEEK, 
                         F21_FADM_FISCAL_CALENDAR.FISCAL_MONTH, F21_FADM_FISCAL_CALENDAR.FISCAL_QUARTER, F21_FADM_FISCAL_CALENDAR.FISCAL_YEAR
FROM            F21_FADM_FISCAL_CALENDAR INNER JOIN
                         F21_FMSH_ITEM_FORECAST_PERIOD ON F21_FADM_FISCAL_CALENDAR.CALENDAR_SEQ = F21_FMSH_ITEM_FORECAST_PERIOD.CALENDAR_SEQ

    -- Insert statements for procedure here

END
GO
