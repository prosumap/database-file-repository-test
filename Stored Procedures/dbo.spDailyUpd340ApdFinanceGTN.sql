SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/13/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd340ApdFinanceGTN] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO MkTbl_Finance_GTN
                         (YearMonth, Fiscal_Year, Fiscal_Month, Dmnd_Gross$, Dmnd_Net$, ImmCxl_Gross$, ImmCxl_Net$, Cxl_Gross$, Cxl_Net$, Disc$, Tax$, ShipHnd$, Ship_Gross$, Ship_Net$, Ship_Cost$)
SELECT        Fiscal_Year + Fiscal_Month AS YearMonth, Fiscal_Year, Fiscal_Month, SUM(Dmnd_Gross$) AS Dmnd_Gross$, SUM(Dmnd_Net$) AS Dmnd_Net$, SUM(ImmCxl_Gross$) AS ImmCxl_Gross$, SUM(ImmCxl_Net$) AS ImmCxl_Net$, 
                         SUM(Cxl_Gross$) AS Cxl_Gross$, SUM(Cxl_Net$) AS Cxl_Net$, SUM(Dmnd_Gross$ - Dmnd_Net$) AS Disc$, SUM(Tax$) AS Tax$, SUM(ShipHnd$) AS ShipHnd$, SUM(Ship_Gross$) AS Ship_Gross$, SUM(Ship_Net$) 
                         AS Ship_Net$, SUM(Ship_Cost$) AS Ship_Cost$
FROM            MkTbl_DailyDetail
GROUP BY Fiscal_Year + Fiscal_Month, Fiscal_Year, Fiscal_Month

END
GO
