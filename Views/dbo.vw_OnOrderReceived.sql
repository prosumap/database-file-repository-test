SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE  view   [dbo].[vw_OnOrderReceived]
as
SELECT
tor.[CATALOG],
tor.[CATALOG DESC], 
tor.[PO #],
tor.[REQ #],
tor.[NDC],
tor.[FISCAL WK],
tor.[FISCAL MONTH],
tor.[FISCAL YEAR],
tor.[RECEIPT DATE],
tor.[GROUP CODE],
tor.[MERCH TYPE],
tor.[STYLE DESC],
tor.[COLOR DESC],
tor.[INV7],
tor.[VENDOR #],
tor.[VENDOR],
tor.[VENDOR STYLE #],
tor.[COST EA], 
tor.[PO COST], 
tor.[APPROVED DATE], 
tor.[INV10],
tor.[OO COST],
tor.[OO UNITS],
tor.[RECEIVED COST],
tor.[RECEIVED UNITS],
t.[Original Price],
---------------------------------
(t.[Original Price] * tor.[OO UNITS] )as [OO Ticket $],
(t.[Original Price] * tor.[RECEIVED UNITS] )as [ Received Ticket $],
---------------------------------------------
(((t.[Original Price] * tor.[OO UNITS] ) - tor.[OO COST] ) / NULLIF((t.[Original Price] * tor.[OO UNITS] ),0)) as [OO IMU %],
(((t.[Original Price] * tor.[RECEIVED UNITS] )-tor.[RECEIVED COST])/NULLIF((t.[Original Price] * tor.[RECEIVED UNITS] ),0))as  [Received IMU %]

from [BPReporting_Dev].[dbo].[MkTbl_TTLOnOrderReceived] as tor

Inner join 
(
select tps.Sku,

Max(isnull(tps.[INET_OriginalPrice], tps.[UNIT_PRICE])) as [Original Price] 
From

		[BPReporting_Dev].[dbo].[ExpMkTbl_ProdSku] as tps 
		group by tps.sku
)as t on t.Sku=tor.[INV10]

GO
