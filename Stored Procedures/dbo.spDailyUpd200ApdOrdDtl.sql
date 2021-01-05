SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 10/18/19
-- Description:	Part of Weekly Update routine.  Added this after Kari made major modifications to tables
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd200ApdOrdDtl] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE FROM MkTbl_Ord_Dtl
WHERE        (ItemDt > GETDATE() - 11) AND (StaticRec = 0) --Static records were created by Andre and Kari in Dec 2019.  They included recs from 2016-2018.  they were added to this table on 12/11/19

INSERT INTO MkTbl_Ord_Dtl
                         ([ORDER #], ORDDTL, SGORDNO, [Customer #], Cat, [Source Cd], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], OrdDt, ItemDt, Ordrd, [Net Price], GPriceDD, InvCostDD, TaxDD, ShipHandDD, Base#, InvID, 
                         LongDescTX, [Inet Ord ID], [SALES REP], POS, [Dtl Seq])
SELECT        [ORDER #], OrdDtl, SgOrdNo, [CUSTOMER #], RTRIM(LTRIM(Cat)) AS TrimmedCat, [SOURCE CD], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], [Order Date], Itemdt, Ordrd, [Net Price], GpriceDD, InvCostDD, TaxDD, 
                         ShipHandDD, Base#, InvId, LongDescTx, [Inet Ord ID], [SALES REP], POS, [Dtl Seq]
FROM            vwDailyUpdSlct_OrdDtl_2

INSERT INTO MkTbl_Ord_Dtl
                         ([ORDER #], ORDDTL, SGORDNO, [Customer #], Cat, [Source Cd], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], OrdDt, ItemDt, Ordrd, [Net Price], GPriceDD, InvCostDD, TaxDD, ShipHandDD, Base#, InvID, 
                         LongDescTX, [Inet Ord ID], [SALES REP], POS, [Dtl Seq])
SELECT        [ORDER #], ORDDTL, SgOrdNo, [CUSTOMER #], RTRIM(LTRIM(Cat)) AS TrimmedCat, [SOURCE CD], [SOURCE DESC], [ALT SOURCE CD], [ALT SOURCE DESC], [Order Date], ItemDt, Ordrd, [Net Price], GpriceDD, InvCostDD, 
                         TaxDD, ShipHandDD, Base#, InvId, LongDescTx, [Inet Ord ID], [SALES REP], POS, [Dtl Seq]
FROM            vwDailyUpdSlct_CordDtl_2

UPDATE       MkTbl_Ord_Dtl
SET                Cat = RTRIM(LTRIM(Cat))
WHERE        (CASE WHEN LEFT(cat, 1) = ' ' THEN 1 ELSE 0 END = 1)

END
GO
