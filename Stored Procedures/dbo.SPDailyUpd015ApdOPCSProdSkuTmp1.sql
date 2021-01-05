SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE Procedure [dbo].[SPDailyUpd015ApdOPCSProdSkuTmp1]
as 
begin
INSERT INTO tmpDailyUpdOPCSProdSku
( [PrdoSkuCtr],[INV], [Base#], [BP Base], [Upccd], [Description 1], [Spec 1], [Spec 2], [Vendor #], [Vendor Name], [Vendor Color], [Vendor Style], [POS Date], [Cost], [On Hand Qty], [CrOn])


SELECT [PrdoSkuCtr], [INV], [Base#], [BP Base], [Upccd], [Description 1], [Spec 1], [Spec 2], [Vendor #], [Vendor Name], [Vendor Color], [Vendor Style], [POS Date], [Cost], [On Hand Qty],[CrOn]
FROM RefTbl_OPCSProdSku  ;


INSERT INTO RefTbl_OPCSProdSku
( [INV], [Base#], [BP Base], [Upccd], [Description 1], [Spec 1], [Spec 2], [Vendor #], [Vendor Name], [Vendor Color], [Vendor Style], [POS Date], [Cost], [On Hand Qty])



SELECT  [INV], [Base#], [BP Base], [Upccd], [Description 1], [Spec 1], [Spec 2], [Vendor #], [Vendor Name], [Vendor Color], [Vendor Style], [POS Date], [Cost], [On Hand Qty]
FROM RefTbl_OPCSProdSku1  ;

end
GO
