SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Created by :		ajay.pandey
-- Created date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SpDailyUpd030ApdTTLOnOrderReceived]
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
             ndc, 
             [po status], 
             [ship date], 
             [receipt date], 
             [approved date], 
             [fiscal wk], 
             [fiscal month #], 
             [fiscal month], 
             [fiscal year], 
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
SELECT vwDailyUpdslct_poopen_7.catalog, 
       vwDailyUpdslct_poopen_7.[catalog desc], 
       vwDailyUpdslct_poopen_7.[po #], 
      Ltrim(Rtrim([req #]))                                             AS REQ, 
       vwDailyUpdslct_poopen_7.ndc, 
       Iif([vwDailyUpdslct_poopen_7] . [approved date] IS NOT NULL,
	    Iif( [vwDailyUpdslct_poopen_7] . [oo units] > 0, 'open', Iif([vwDailyUpdslct_poopen_7] . [received units] > 0, 'received', 'cancelled')), Iif( [vwDailyUpdslct_poopen_7] . [oo units] > 0, 'draft', 'cancelled')) AS [PO STATUS], 
       vwDailyUpdslct_poopen_7.[ship date], 
       vwDailyUpdslct_poopen_7.[receipt date], 
       vwDailyUpdslct_poopen_7.[approved date], 
       vwDailyUpdslct_poopen_7.[fiscal wk], 
       vwDailyUpdslct_poopen_7.[fiscal month #], 
       vwDailyUpdslct_poopen_7.[fiscal month], 
       vwDailyUpdslct_poopen_7.[fiscal year], 
       vwDailyUpdslct_poopen_7.[original ndc], 
       vwDailyUpdslct_poopen_7.[group code], 
       vwDailyUpdslct_poopen_7.[merch type], 
       vwDailyUpdslct_poopen_7.[style desc], 
       vwDailyUpdslct_poopen_7.inv5, 
       vwDailyUpdslct_poopen_7.[color desc], 
       vwDailyUpdslct_poopen_7.inv7, 
       vwDailyUpdslct_poopen_7.[size desc], 
        Ltrim(Rtrim([inv10]) )                                            AS Itm, 
       vwDailyUpdslct_poopen_7.[vendor #], 
       vwDailyUpdslct_poopen_7.vendor, 
       vwDailyUpdslct_poopen_7.[vendor style #], 
       vwDailyUpdslct_poopen_7.[cost ea], 
       vwDailyUpdslct_poopen_7.[po cost], 
       vwDailyUpdslct_poopen_7.[orig ordered units], 
       vwDailyUpdslct_poopen_7.[cxl units], 
       vwDailyUpdslct_poopen_7.[oo units], 
       vwDailyUpdslct_poopen_7.[oo cost], 
       vwDailyUpdslct_poopen_7.[received units], 
       vwDailyUpdslct_poopen_7.[received cost], 
       vwDailyUpdslct_disc.discounts, 
       vwDailyUpdslct_poopen_7.chargeback, 
       Ltrim(Rtrim([terms]) )                                            AS Trms, 
       vwDailyUpdslct_poopen_7.[terms desc], 
       vwDailyUpdslct_poopen_7.[ship mode] 
FROM   vwDailyUpdslct_poopen_7 
       LEFT JOIN vwDailyUpdslct_disc 
              ON vwDailyUpdslct_poopen_7.[po #] = vwDailyUpdslct_disc.[po #]

			  END


			
GO
