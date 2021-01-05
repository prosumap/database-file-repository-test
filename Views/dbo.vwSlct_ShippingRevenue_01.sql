SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE view [dbo].[vwSlct_ShippingRevenue_01]
as
SELECT dbo.mktbl_ord_dtl.[order #], 
       Min(dbo.mktbl_ord_dtl.itemdt) AS [First Order Date], 
       dbo.mktbl_ord_dtl.shiphanddd  AS [Shipping Revenue $] 
FROM   dbo.mktbl_ord_dtl 
GROUP  BY dbo.mktbl_ord_dtl.[order #], 
          dbo.mktbl_ord_dtl.shiphanddd; 
GO
