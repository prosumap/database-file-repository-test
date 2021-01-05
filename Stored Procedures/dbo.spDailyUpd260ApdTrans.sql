SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 9/12/19
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd260ApdTrans] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
-- To replace qryDailyUpd250DelTransRecent
-- Do not delete more than 10 days of records. LinkTbl_Trans_New and LinkTbl_CTrans_New are used as source and they only hold the last 10 days of data
-- GETDATE() - 11= last 10 days before today
DELETE FROM MkTbl_Trans
WHERE        (Cdatedt > GETDATE() - 11)

-- To replace qryDailyUpd270ApdCTrans
INSERT INTO MkTbl_Trans
                         (ItemTransBP, OhId, SkuId, DSeq, Type, Cdatedt, ItemCatId, NpriceDD, OdNpriceDD, GpriceDD, TransQQ, CustRsnCd, [Rsn Desc])
SELECT        ItemTransBP, OhId, SkuId, Dseq, Type, CdateDt, ItemCatId, NpriceDD, OdNpriceDD, GPriceDD, TransQQ, CustRsnCd, RsnDesc
FROM            vwDailyUpdSlct_CTrans

-- To replace qryDailyUpd260ApdTrans
INSERT INTO MkTbl_Trans
                         (ItemTransBP, OhId, SkuId, DSeq, Type, Cdatedt, ItemCatId, NpriceDD, OdNpriceDD, GpriceDD, TransQQ, CustRsnCd, [Rsn Desc])
SELECT        ItemTransBP, OhId, SkuID, Dseq, Type, CdateDt, ItemCatId, NpriceDD, OdNpriceDD, GPriceDD, Transqq, CustRsnCd, RsnDesc
FROM            vwDailyUpdSlct_Trans

UPDATE       MkTbl_Trans
SET                OhId = LTRIM(RTRIM(OhId))
WHERE        (CASE WHEN LEFT(OhId, 1) = ' ' THEN 1 ELSE 0 END = 1);

-- Look for duplicates and delete them
With qryDups as 
(
	SELECT        ItemTransBP, TransCtr, OhId, SkuId, DSeq, Type, Cdatedt, ItemCatId, NpriceDD, OdNpriceDD, GpriceDD, TransQQ, CustRsnCd, [Rsn Desc], CrOn, ROW_NUMBER() over(Partition by ItemTransBP order by ItemTransBP, TransCtr) as RowNumber
	FROM            MkTbl_Trans
	WHERE        (ItemTransBP IN
								 (SELECT        ItemTransBP
								   FROM            MkTbl_Trans AS Tmp
								   GROUP BY ItemTransBP
								   HAVING         (COUNT(*) > 1)))
)
DELETE from qryDups where RowNumber>1

END
GO
