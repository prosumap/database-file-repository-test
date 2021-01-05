SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Created by :		ajay.pandey
-- Created date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SpDailyUpd040ApdTTLOnOrderReceived_1]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

INSERT INTO mktbl_ttlonorderreceived 
            ([catalog], 
             [catalog desc], 
             [po #], 
             [req #], 
             [po status], 
             [approved date], 
             ndc, 
             [fiscal wk], 
             [fiscal month #], 
             [fiscal month], 
             [fiscal year], 
             [ship date], 
             [receipt date], 
             [original ndc], 
             [group code], 
             [merch type], 
             [style desc], 
             inv5, 
             [color desc], 
             inv7, 
             [size desc], 
             inv10, 
             [vendor #], 
             vendor, 
             [vendor style #], 
             [cost ea], 
             [po cost], 
             [orig ordered units], 
             [cxl units], 
             [oo units], 
             [oo cost], 
             [received units], 
             [received cost], 
             discounts, 
             chargeback, 
             terms, 
             [terms desc], 
             [ship mode]) 
SELECT vwDailyUpdSlct_PoClsd_8.catalog, 
       vwDailyUpdSlct_PoClsd_8.[catalog desc], 
       vwDailyUpdSlct_PoClsd_8.[po #], 
       lTrim(rTrim([req #]))                              AS Req, 
       Iif([approved date] > 0, Iif([oo units] > 0, 'open', 
                                Iif([received units] > 0, 'received', 
                                'cancelled')), 
       Iif([oo units] > 0, 'draft', 'cancelled')) AS [PO STATUS], 
       vwDailyUpdSlct_PoClsd_8.[approved date], 
       vwDailyUpdSlct_PoClsd_8.ndc, 
       vwDailyUpdSlct_PoClsd_8.[fiscal wk], 
       vwDailyUpdSlct_PoClsd_8.[fiscal month #], 
       vwDailyUpdSlct_PoClsd_8.[fiscal month], 
       vwDailyUpdSlct_PoClsd_8.[fiscal year], 
       vwDailyUpdSlct_PoClsd_8.[ship date], 
       vwDailyUpdSlct_PoClsd_8.[receipt date], 
       vwDailyUpdSlct_PoClsd_8.[original ndc], 
       vwDailyUpdSlct_PoClsd_8.[group code], 
       vwDailyUpdSlct_PoClsd_8.[merch type], 
       vwDailyUpdSlct_PoClsd_8.[style desc], 
       vwDailyUpdSlct_PoClsd_8.inv5, 
       vwDailyUpdSlct_PoClsd_8.[color desc], 
       vwDailyUpdSlct_PoClsd_8.inv7, 
       vwDailyUpdSlct_PoClsd_8.[size desc], 
        lTrim(rTrim([inv10]))                              AS Itm, 
       vwDailyUpdSlct_PoClsd_8.[vendor #], 
       vwDailyUpdSlct_PoClsd_8.vendor, 
       vwDailyUpdSlct_PoClsd_8.[vendor style #], 
       vwDailyUpdSlct_PoClsd_8.[cost ea], 
       vwDailyUpdSlct_PoClsd_8.[po cost], 
       vwDailyUpdSlct_PoClsd_8.[orig ordered units], 
       vwDailyUpdSlct_PoClsd_8.[cxl units], 
       vwDailyUpdSlct_PoClsd_8.[oo units], 
       vwDailyUpdSlct_PoClsd_8.[oo cost], 
       vwDailyUpdSlct_PoClsd_8.[received units], 
       vwDailyUpdSlct_PoClsd_8.[received cost], 
       vwDailyUpdSlct_PoClsd_8.discounts, 
       vwDailyUpdSlct_PoClsd_8.chargeback, 
       lTrim(rTrim([terms]) )                             AS Trms, 
       vwDailyUpdSlct_PoClsd_8.[terms desc], 
       vwDailyUpdSlct_PoClsd_8.[ship mode] 
FROM   vwDailyUpdSlct_PoClsd_8

END
GO
